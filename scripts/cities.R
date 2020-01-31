# Reads in and writes out city ID, city name, and geometry data

# Source: https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.geojson
# Author: Luiza Santos
# Version: 2020-01-30

# Libraries
library(here)
library(tidyverse)

# Parameters
# Input file
file_raw <- "https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.geojson"
file_out <- here::here("data/cities.rds")

#===============================================================================


file_raw %>%
  sf::read_sf() %>%
  select(GEOID, n) %>%
  rename(city_id = GEOID,
         city_name = n) %>%
  write_rds(file_out)


