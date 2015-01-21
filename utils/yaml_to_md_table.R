#' Convert a YAML file to a markdown table.
#'
#' @param filename character. Name of the YAML file.
#' @param rowmap function. Optional transformation on each table row.
#'    Default is \code{base::identity}.
#' @examples
#' # If you have a file like
#' #   - 
#' #     - Name
#' #     - Description
#' #   - 
#' #     - load_all
#' #     - https://github.com/hadley/devtools/blob/master/R/load.r#L85
#' #     - Load a local package.
#' # and you call \code{yaml_to_md_table} with
#' #   \code{rowmap = function(x) c(paste0("[`", x[1], "`](", x[2], ")"), x[3])}
#' # it will generate 
#' # 
#' # | Name | Description |
#' # | ---- | ----------- |
#' # | [`load_all`](https://github.com/hadley/devtools/blob/master/R/load.r#L85) | Load a local package. |
yaml_to_md_table <- function(filename, rowmap = base::identity) {
  library(yaml)
  yaml <- yaml::yaml.load_file(filename)

  # Inject --- rule
  yaml <- list(yaml[[1]], rep('----', length(yaml[[1]])),
               lapply(yaml[-1], rowmap))

  paste(yaml, collapse = "\n")
}
