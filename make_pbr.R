library(rvest)

url = "https://docs.microsoft.com/en-us/rest/api/power-bi/admin/dashboards_getdashboardsasadmin"
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
  
  h2_text <- page %>%
    html_nodes("h2") %>%
    html_text()
  params <- c("URI Parameters", "Request Body") %in% h2_text
  tables <- html_table(page)
  if (all(params)) {
    uri_params <- fetch_params(tables[[1]])  
    body_params <- fetch_params(tables[[2]])
  } else if (params[1] == FALSE) {
    uri_params <- NULL
    body_params <- fetch_params(tables[[1]])
  } else if (params[2] == FALSE) {
    uri_params <- fetch_params(tables[[1]])
    body_params <- NULL
  }
  
  fun <- functionalize(name, method, path, uri_params, body_params)
  doc <- document(description, param_names, param_descriptions)
  paste(doc, fun, sep = "\n")
}

fetch_params <- function(table) {
  names <- table$Name
  if (length(names) == 0) {
    return(NULL)
  } else if (names[[1]] == "200 OK") {
    return(NULL)
  }
  names <- gsub("$", "", names, fixed = TRUE)
  descriptions <- table$Description
  required <- table$Required
  list(names = names,
       descriptions = descriptions,
       required = required)
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

functionalize <- function(name, method, path, 
                          uri_params, body_params) {
  uri_names <- uri_params$names
  body_names <- body_params$names
  if (!is.null(body_names)) {
    body_names <- ifelse(body_names %in% uri_names,
                         paste("body_", body_names, sep = "_"),
                         body_names)    
  }
  if (is.null(uri_names)) {
    uri_names <- ""
  } else {
    uri_required <- uri_params$required
    if (is.null(uri_required)) uri_required <- rep(TRUE, length(uri_names))
    uri_names <- ifelse(is.na(uri_required),
                        paste(uri_names, "= NULL"),
                        uri_names)
    uri_names <- paste0(
      ", ",
      paste(uri_names, collapse = ", ")
    ) 
  }
  if (is.null(body_names)) {
    body <- FALSE
    body_names <- ""
  } else {
    body <- enlist(body_names)
    body_required <- body_params$required
    if (is.null(body_required)) body_required <- rep(TRUE, length(body_names))
    body_names <- ifelse(is.na(body_required),
                        paste(body_names, "= NULL"),
                        body_names)
    body_names <- paste0(
      ", ",
      paste(body_names, collapse = ", ")
    ) 
  }
  
  glue::glue(
    "[name] <- function(token[uri_names][body_names], output = \"value\") {
      path <- \"[path]\"
      response <- httr::[method](url = glue::glue(path),
                                 config = httr::config(token = token),
                                 body = [body])
      process(response, output)
    }",
    .open = "[",
    .close = "]"
  )
}

enlist <- function(body_names) {
  paste0(
    "list(",
    paste(
      paste(
        body_names, 
        body_names, 
        sep = " = "
      ),
      collapse = ", "
    ),
    ")"
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

make_pbr <- function() {
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
  # styler::style_dir("R")
  roxygen2::roxygenise()
}

make_pbr()

# TODO fix optional uri pars, remember $ stuff
# TODO fix description, add urls
# TODO add status verification
# TODO add readme