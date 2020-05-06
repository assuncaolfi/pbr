library(rvest)

# url="https://docs.microsoft.com/en-us/rest/api/power-bi/apps/getapps"
make_operation <- function(url, name) {
  message(url)
  page <- read_html(url)
  endpoint <- page %>% 
    html_node("pre") %>% 
    html_text() %>%
    strsplit(" ") %>% 
    unlist()
  method <- endpoint[1]
  path <- endpoint[2]
  description <- page %>% 
    html_node("p") %>% 
    html_text() %>% 
    sub(" To set the permissions scope, see Register an app.", "", .)
  params <- html_table(page)[[1]]
  param_names <- params$Name
  param_names <- gsub("$", "", param_names, fixed = TRUE)
  if (param_names == "200 OK") {
    param_names <- NULL
  }
  param_descriptions <- params$Description
  fun <- functionalize(name, method, path, param_names)
  doc <- document(description, param_names, param_descriptions)
  paste(doc, fun, sep = "\n")
}

document <- function(description, param_names, param_descriptions) {
  paste(
    paste("#'", gsub("\n", "\n#' ", description, fixed = TRUE), collapse = ""),
    paste("\n#' @param", param_names, param_descriptions, collapse = ""),
    "\n#' @return A `data.frame` object.",
    "\n#' @export",
    collapse = "\n#' "
  )
}

functionalize <- function(name, method, path, param_names) {
  if (!is.null(param_names)) {
    param_names <- paste0(
      ", ",
      paste(param_names, collapse = ", ")
    ) 
  } else {
    param_names <- ""
  }
  glue::glue(
    "[name] <- function(token[param_names]) {
      path <- \"[path]\"
      httr::[method](glue::glue(path), config(token = token))
    }",
    .open = "[",
    .close = "]"
  )
}

get_table_col <- function(url, type = "path") {
  if (type == "path") {
    url %>% 
      read_html() %>%  
      html_nodes("td:nth-child(1) a") %>%
      html_attr("href")
  } else if (type == "name") {
    url %>% 
      read_html() %>% 
      html_table() %>% 
      .[[1]] %>% 
      .[[1]] %>% 
      tolower() %>% 
      gsub(" ", "_", .)
  }
}

base_url <- "https://docs.microsoft.com/en-us/rest/api/power-bi/"
groups <- get_table_col(base_url)
group_urls <- paste0(base_url, gsub(" ", "", groups), "/")
operations <- lapply(group_urls, get_table_col)
function_names <- lapply(group_urls, get_table_col, type = "name")
operation_urls <- lapply(operations, function(x) paste0(base_url, x))
operation_functions <- mapply(
  function(url, name) {
    unlist(mapply(make_operation, url, name))
  },
  url = operation_urls,
  name = function_names
)
script_names <- gsub(" ", "_", get_table_col(base_url, type = "name"))
names(operation_functions) <- script_names
if (!file.exists("R")) dir.create("R")
mapply(
  function(funs, script_name) {
    script <- paste(funs, collapse = "\n\n")
    write(script, file = file.path("R", glue::glue("{script_name}.R")))
    TRUE
  },
  funs = operation_functions,
  script_name = script_names
)

# TODO fix POST params (to payload, not url)
# TODO fix optional pars with $ stuff