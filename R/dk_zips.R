
#' Function to get the postal codes in Denmark.
#'
#' @examples
#'
#' library(dkzip)
#'
#' dk_zips()
#'
#' @export
#'
dk_zips <- function(){

  postal_codes <- readr::read_file(system.file("postal_codes.txt", package = "zipdk"))

  postal_codes <- jsonlite::fromJSON(postal_codes)

  postal_tbl <- tibble::tibble(postcode = unlist(purrr::map(postal_codes, ~.x[[1]])),
                               city_name = unlist(purrr::map(postal_codes, ~.x[[2]])),
                               city_id = purrr::map(postal_codes, ~.x[[3]]))

  tidyr::unnest(postal_tbl)
}
