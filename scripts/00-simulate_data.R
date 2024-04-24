#### Preamble ####
# Purpose: Simulate the data set from the Pockets paper by Jan Diehm & Amber Thomas. 
# Author: Hari Lee Robledo
# Date: April 2 2023 
# Contact: hari.leerobledo@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
# Code referenced from: https://chat.openai.com/

# Set seed for reproducibility
set.seed(123)

# Number of jeans for each gender
num_jeans <- 40

# Generate data for men's jeans
men_jeans <- data.frame(
  gender = rep("Men", num_jeans),
  price = round(runif(num_jeans, min = 30, max = 200), 2), 
  pocket_area = round(runif(num_jeans, min = 12, max = 20), 2) 
)

# Generate data for women's jeans
women_jeans <- data.frame(
  gender = rep("Women", num_jeans),
  price = round(runif(num_jeans, min = 30, max = 200), 2), 
  pocket_area = round(runif(num_jeans, min = 12, max = 20), 2) 
)
# Combine the datasets
jeans_data <- rbind(men_jeans, women_jeans)

jeans_data


#### Test simulated data ####
# Code referenced from: https://chat.openai.com/

# Test 1: Check total number of rows
if (nrow(jeans_data) == 80) {
  print("Test 1 Passed: Total number of rows is correct.")
} else {
  print("Test 1 Failed: Total number of rows is incorrect.")
}

# Test 2: Check price range
if (all(jeans_data$price >= 30) & all(jeans_data$price <= 200)) {
  print("Test 2 Passed: Price range is correct.")
} else {
  print("Test 2 Failed: Price range is incorrect.")
}

# Test 3: Check pocket area range
if (all(jeans_data$pocket_area >= 12) & all(jeans_data$pocket_area <= 20)) {
  print("Test 3 Passed: Pocket area range is correct.")
} else {
  print("Test 3 Failed: Pocket area range is incorrect.")
}
