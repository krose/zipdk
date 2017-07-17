
#' Function to get the Danish regions.
#'
#' @examples
#'
#' library(dkzip)
#'
#' dk_regions()
#'
#' @export
#'
dk_regions <- function(){

  regions <- readr::read_file(system.file("regions.txt", package = "zipdk"))

  regions <- jsonlite::fromJSON(regions)

  regions_tbl <- tibble::tibble(region_id = unlist(purrr::map(regions, ~.x[[1]])),
                                region_name = unlist(purrr::map(regions, ~.x[[2]])),
                                muni_id = purrr::map(regions, ~.x[[3]]))

  tidyr::unnest(regions_tbl)
}
