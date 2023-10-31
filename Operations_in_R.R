# Create a vector of colleagues' names
colleagues <- c("Charles", "Chelimo", "James", "Kate", "Simon", "Violet")

# Display the colleagues vector
colleagues

# Check the data type of the colleagues vector
typeof(colleagues)

# Get the length of the colleagues vector
length(colleagues)

# Check if the colleagues vector contains integers
is.integer(colleagues)

# Create a list with various data types
y <- list("me", 50L, 20.35, FALSE)

# Display the structure of the list
str(y)

# Create a nested list
z <- list(list(list(1, 3, 5, "Kenya", TRUE))

# Display the structure of the nested list
str(z)

# Create a named list of country codes
country_codes <- list('Kenya' = 254, 'Uganda' = 256, 'Tanzania' = 255)

# Load required libraries
library(tidyverse)
library(lubridate)

# Get the current date
today()

# Get the current date and time
now()

# Convert a date string to a date
dmy("22nd January, 2019")

# Convert a date and time string to a datetime
dmy_hms("22nd July, 2010 23:30:45")

# Convert a datetime to a date
as_date(now())

# Create a directory
dir.create("destination_folder")

# Create a file
file.create("my_first_file.docx")

# Copy a file to a destination folder
file.copy("my_first_file.docx", "destination_folder")

# Create matrices
matrix1 <- matrix(c(3:8), nrow = 2)
matrix2 <- matrix(c(2:7), ncol = 2)

# Perform calculations
basket_1 <- 250
basket_2 <- 321
basket_3 <- 503

# Calculate the total number of mangoes
total_mangoes <- basket_1 + basket_2 + basket_3

# Calculate the product of the mangoes
product_mangoes <- basket_1 * basket_2 * basket_3

# Display the results
total_mangoes
product_mangoes
