#' Get tags list
#'
#' @details
#'
#' @param accountId accountId to request
#' @param containerId containerId to request
#' @return a data frame of tags
#' @importFrom googleAuthR gar_api_generator
#' @family list functions
#' @export
#'
gtm_tags_list <- function(accountId,containerId) {
  url <- paste0("https://www.googleapis.com/tagmanager/v1/accounts/",accountId,"/containers/",containerId,"/tags")
  # tagmanager.tags.list
  f <- googleAuthR::gar_api_generator(url, "GET", data_parse_function = function(x) x)
  f()$tag[,1:6]
}
#' Get tags list
#'
#' @details
#' @param accountId accountId to request
#' @param containerId containerId to request
#' @param tagId tagId to request
#' @return a data frame of tags
#' @importFrom googleAuthR gar_api_generator
#' @family get functions
#' @export
#'
gtm_tag <- function(accountId,containerId,tagId) {
  url <- paste0("https://www.googleapis.com/tagmanager/v1/accounts/",accountId,"/containers/",containerId,"/tags/",tagId)
  # tagmanager.tags
  f <- googleAuthR::gar_api_generator(url, "GET", data_parse_function = function(x) x)
  f()$parameter
}
