#### Preamble ####
# Purpose: Download and save the data from from the Womens´s Pockets are Inferior paper by Jan Diehm & Amber Thomas. 
# Author: Hari Lee Robledo
# Date: April 2 2023 
# Contact: hari.leerobledo@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
#install.packages()
library(tidyverse)
library(readr)
library(jsonlite)


#### Download measurements json data ####
# Code referenced from:chat.openai.com 
github_url <- "https://raw.githubusercontent.com/the-pudding/data/master/pockets/measurementRectangles.json"

# Read the JSON data from GitHub into R
pocket_area_data <- fromJSON(github_url)



#### Save measurements json data ####
# Code referenced from: chat.openai.com
json_string <- toJSON(pocket_area_data, pretty = TRUE)

# Specify the file path
file_path <- here::here("data/raw_data/pocket_area_data.json")

# Write the JSON data to the file
writeLines(json_string, file_path)


# Convert JSON to data frame
df <- as.data.frame(pocket_area_data)

# Save data frame as CSV
write.csv(df, "data/raw_data/pocket_area_data.csv", row.names = FALSE)


