# PART 1: DATA CLEANING

# Load required libraries
library(naniar)  # For handling missing data
library(dplyr)   # For data manipulation
library(readr)   # For reading and writing data

# Load and summarize the 'penguins' dataset
penguins <- read_csv("F:/R_Analytics/penguins.csv")

# Summarize data without charts
skim_without_charts(penguins)

# Examine the structure and first rows of 'penguins'
glimpse(penguins)
head(penguins)

# Select 'species' column
penguins %>%
  select(species)

# Select all columns except 'species'
penguins %>%
  select(-species)

# Rename 'island' to 'island_new'
penguins %>%
  rename(island_new = island)

# Rename columns to uppercase
rename_with(penguins, toupper)

# Rename columns to lowercase
rename_with(penguins, tolower)

# Clean column names
clean_names(penguins)

# Load and summarize 'bookings_df' dataset
bookings_df <- read_csv("F:/R_Analytics/hotel_bookings.csv")

# Explore the 'bookings_df' data
head(bookings_df)
skim_without_charts(bookings_df)
glimpse(bookings_df)
colnames(bookings_df)
str(bookings_df)

# Clean and select relevant columns
trimmed_df <- bookings_df %>%
  select(hotel, is_canceled, lead_time)
trimmed_df %>%
  select(hotel, is_canceled, lead_time) %>%
  rename(hotel_type = hotel)

# Create a new column 'arrival_month_year'
example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>%
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

# Calculate 'total_guests' by summing 'adults', 'children', and 'babies'
total_guests <- bookings_df %>%
  mutate(guests = adults + children + babies)
head(total_guests)


# PART 2: DATA TRANSFORMATION

# Separate the 'name' column into 'first_name' and 'last_name' using a space separator
separate(employee, name, into = c("first_name", "last_name"), sep = ' ')

# Load the 'quartet' dataset
data("quartet")
view(quartet)  # Display the first few rows of the 'quartet' dataset

# Statistical summary for the 'quartet' dataset
quartet %>%
  group_by(set) %>%
  summarise(
    mean_x = mean(x),
    sd_x = sd(x),
    mean_y = mean(y),
    sd_y = sd(y),
    correlation = cor(x, y)
  )

# Load the 'ggplot2' library
library(ggplot2)

# Create a scatter plot with linear regression lines and facets based on 'set' column
ggplot(quartet, aes(x, y)) +
  geom_point() +
  geom_smooth(method = lm, se = FALSE) +
  facet_wrap(~set)

# Install and load the 'datasauRus' package
install.packages("datasauRus")
library(datasauRus)

# Create a scatter plot with different datasets using 'datasaurus_dozen'
ggplot(datasaurus_dozen, aes(x = x, y = y, color = dataset)) +
  geom_point() +
  theme_void() +
  theme(legend.position = "none") +
  facet_wrap(~dataset, ncol = 3)


# PART 3: DATA ANALYSIS

# The AND Operator
x <- 25
result1 <- x > 10 & x < 30  # Check if x is greater than 10 and less than 30
result2 <- x > 20 & x < 25  # Check if x is greater than 20 and less than 25

# The OR Operator
y <- 30
result3 <- y > 40 | y < 35  # Check if y is greater than 40 or less than 35
result4 <- y > 40 | y < 25  # Check if y is greater than 40 or less than 25

# The NOT Operator
z <- 0
not_result1 <- !z  # Check if z is not true (not equal to 0)
w <- 15
not_result2 <- !w  # Check if w is not true (not equal to 0)

# IF Statement
a <- 15
if (a > 5) {
  print("Take a walk in Ibiza")
}

# The ELSE Statement
b <- 10
if (b > 15) {
  print("Go for a walk")
} else {
  print("Stay indoors and watch TV")
}

# The ELSE IF Statement
c <- 20
if (c > 25) {
  print("Go for a walk")
} else if (c == 20) {
  print("Make a determination")
} else {
  print("Stay indoors and watch TV")
}

# Loading and exploring the 'diamonds' dataset
library(ggplot2)
data(diamonds)

# Show the first few rows of the dataset
head(diamonds)

# Display the structure of the dataset
str(diamonds)

# Glimpse into the dataset
glimpse(diamonds)

# Get the column names
colnames(diamonds)

# Renaming columns
diamonds <- rename(diamonds, x = x, y = y, z = z)

# Summarize the dataset
diamonds_summary <- summarize(diamonds, mean_carat = mean(carat))

# Create a scatter plot
ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point()

# Create a scatter plot with color grouping
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point()

# Create a scatter plot with color grouping and facets
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  facet_wrap(~cut)

# Create a vector of colleagues' names
colleagues <- c("Charles", "Chelimo", "James", "Kate", "Simon", "Violet")

# Display the colleagues vector
colleagues

# Check the data type of the colleagues vector
typeof(colleagues)

# Get the length of the colleagues vector
length(colleagues)

# Check if the colleagues vector contains integers (it doesn't)
is.integer(colleagues)

# Create a list with various data types
y <- list("me", 50L, 20.35, FALSE)

# Display the structure of the list
str(y)

# Create a nested list
z <- list(list(list(1, 3, 5, "Kenya", TRUE)))

# Display the structure of the nested list
str(z)

# Create a named list of country codes
country_codes <- list('Kenya' = 254, 'Uganda' = 256, 'Tanzania' = 255)

# Load required libraries
library(tidyverse)   # For data manipulation and visualization
library(lubridate)   # For handling dates and times

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
