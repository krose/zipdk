
#' Function to get the danish municipalities.
#'
#' @examples
#'
#' library(dkzip)
#'
#' dk_munis()
#'
#' @export
#'
dk_munis <- function(){

  muni <- readr::read_file(system.file("municipalities.txt", package = "zipdk"))

  muni <- jsonlite::fromJSON(muni)

  muni_tbl <- tibble::tibble(muni_id = unlist(purrr::map(muni, ~.x[[1]])),
                             muni_name = unlist(purrr::map(muni, ~.x[[2]])),
                             postal_code = purrr::map(muni, ~.x[[3]]))

  tidyr::unnest(muni_tbl)
}
