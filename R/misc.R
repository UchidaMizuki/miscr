#' @importFrom magrittr %>%
resas <- function(x) {
  httr::GET("https://opendata.resas-portal.go.jp",
            config = httr::add_headers(`X-API-KEY` = keyring::key_get("resas-api")),
            path = "api/v1/population/composition/perYear",
            query = list(cityCode = "40109",
                         prefCode = "40")) %>%
    httr::content() %>%
    purrr::chuck("result", "data") %>%
    listviewer::jsonedit()

}
