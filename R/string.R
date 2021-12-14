str_to_snakecase <- function(string) {
  string %>%
    stringr::str_split("(?=[[:upper:]])") %>%
    purrr::map_chr(function(string) {
      string %>%
        stringr::str_to_lower() %>%
        stringr::str_c(collapse = "_")
    }) %>%
    stringr::str_remove("^_")
}
