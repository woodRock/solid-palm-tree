library(h3jsr)
library(sf)

# where is my house at the resolution 15
bth <- st_sfc(st_point(c(174.762881, -41.3323582)), crs = 4326)
point_to_h3(bth, res = 15)

# where is my house at several resolutions
point_to_h3(bth, res = seq(10, 15), simple = FALSE)

# Where is the center of the hexagon at my house at resolution 10.
myhouse_10 <- h3_to_point(h3_address = '8fbb29551349916')

# Is that a valid H3 address?
is_valid(h3_address = '8fbb29551349916')

# Is it a pentagon? 
is_pentagon(h3_address = '8fbb29551349916')

# Is it class III? 
is_rc3(h3_address = '8fbb29551349916')

# What is my houses basce cell number? 
get_base_cell(h3_address = '8fbb29551349916')

# What is the hexagon over my house at resolution 10? 
myhouse_hex_10 <- h3_to_polygon(input = '8fbb29551349916', simple = FALSE)

# What are the hexagons from resolution 10 to 15 for my house?
point_to_h3(bth, res = seq(10,15)) %>%
  unlist() %>%
  h3_to_polygon(., simple = FALSE) %>% 
  mapview::mapview()

