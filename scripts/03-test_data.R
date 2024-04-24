#### Preamble ####
# Purpose: Tests data from the Womens´s Pockets are Inferior paper by Jan Diehm & Amber Thomas. 
# Author: Hari Lee Robledo
# Date: April 2 2023 
# Contact: hari.leerobledo@mail.utoronto.ca 
# License: MIT
# Pre-requisites: 02-data_cleaning.R



#### Workspace setup ####
library(tidyverse)


#### Test data ####
# Test 1

# Check number of items in women_jeans_data 
if (nrow(women_jeans_data) == 40) {
  print("Test Passed: Number of items in women_jeans_data is correct (40).")
} else {
  print("Test Failed: Number of items in women_jeans_data is incorrect.")
}

# Check number of items in men_jeans_data
if (nrow(men_jeans_data) == 40) {
  print("Test Passed: Number of items in men_jeans_data is correct (40).")
} else {
  print("Test Failed: Number of items in men_jeans_data is incorrect.")
}

# Test 2

# Check lowest price in men_jeans_data
if (min(men_jeans_data$price) == 39.99) {
  print("Test Passed: Lowest price in men_jeans_data is correct.")
} else {
  print("Test Failed: Lowest price in men_jeans_data is incorrect.")
}

# Check lowest price in women_jeans_data
if (min(women_jeans_data$price) == 9.99) {
  print("Test Passed: Lowest price in women_jeans_data is correct.")
} else {
  print("Test Failed: Lowest price in women_jeans_data is incorrect.")
}
