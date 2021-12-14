## code to prepare `DATASET` dataset goes here

library(stars)
library(sf)

mesh_landuse_raster <- read_stars("data-raw/mesh_landuse_raster/L03-b-14_5339/L03-b-14_5339.tif")

mesh_landuse_raster %>%
  plot()

# stars tutorial

tif = system.file("tif/L7_ETMs.tif", package = "stars")
x = read_stars(tif)
x <- x$L7_ETMs.tif

tibble::tibble(x = c(0, 2, 4),
               y = 1:3) %>%
  st_as_stars() -> res

stars::
stars::st_dimensions()

res
image(res, text_values = TRUE, axes = TRUE)

sf::st_bbox(c(xmin = 1, ymin = 1, xmax = 2, ymax = 2)) %>%
  st_as_stars(nx = 2,
              ny = 3,
              values = tibble::tibble(a = 1:6)) %>%
  plot()
