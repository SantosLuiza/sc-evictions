# Reads in and joins eviction and cities data

# Author: Luiza Santos
# Version: 2020-01-30

# Libraries
library(here)
library(tidyverse)

# Parameters
# Input file
file_evictions <- here::here("data/evictions.rds")
file_cities <- here::here("data/cities.rds")

# Output file
file_out <- here::here("data/evictions_cities.rds")

#===============================================================================

cities <- read_rds(file_cities)

read_rds(file_evictions) %>%
  left_join(cities,  by = c("geoid" = "city_id")) %>%
  write_rds(file_out)
