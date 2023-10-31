# Load required libraries
library(naniar)
library(dplyr)
library(readr)

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

