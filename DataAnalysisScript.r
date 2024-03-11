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

# Arrange penguins data by ascending bill_length_mm
penguins %>%
  arrange(bill_length_mm)

# Arrange penguins data by descending bill_length_mm
penguins %>%
  arrange(desc(bill_length_mm))

# Arrange penguins data by descending bill_length_mm and save to penguins_2
penguins_2 <- penguins %>% arrange(desc(bill_length_mm))

# Group penguins by island, drop missing values, and calculate the mean bill_length_mm
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(mean_bill_length_mm = mean(bill_length_mm))

# Group penguins by island, drop missing values, and calculate the maximum bill_length_mm
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(max_bill_length_mm = max(bill_length_mm))

# Group penguins by species and island, drop missing values, and calculate max and mean bill_length_mm
penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>% 
  summarise(max_bill_length = max(bill_length_mm),
            mean_bill_length = mean(bill_length_mm))

# Filter penguins data for species "Adelie"
penguins %>% 
  filter(species == "Adelie")

# Calculate statistics for bookings_df data
summary_df <- bookings_df %>%
  summarise(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

# Display the first few rows of the summary data
head(summary_df)


# Load the 'diamonds' dataset
data("diamonds")

# View the 'diamonds' dataset
view(diamonds)

# Mutate the 'diamonds' dataset to create a new column 'carat_new'
mutate(diamonds, carat_new = carat * 100)

# Create a data frame 'people' with 'names' and 'age' columns
names <- c("Jack", "Macharia", "Sofia", "Jecinta", "Irungu", "Wangondu", "Ian")
age <- c(21, 32, 28, 17, 19, 43, 62)
people <- data.frame(names, age)

# Display the first few rows of the 'people' data frame
head(people)

# Mutate the 'people' data frame to create a new column 'age_in_20'
mutate(people, age_in_20 = age + 20)

# Convert the 'diamonds' dataset to a tibble
as_tibble(diamonds)

# Data Import Basics
data()  # List available datasets

# Load the 'mtcars' dataset
data("mtcars")

# View the 'mtcars' dataset
view(mtcars)

# Read the 'mtcars' dataset using readr_example
read_csv(readr_example("mtcars.csv"))

# Read the 'automobile_data.csv' dataset from a file
read_csv("F:/R_Analytics/automobile_data.csv")

# Create a data frame 'automobile_data' from the imported dataset
automobile_data <- read_csv("F:/R_Analytics/automobile_data.csv")



#PART 3: DATA VISUALIZATION

# Set up code chunk options
knitr::opts_chunk$set(echo = TRUE) # Enable code chunk echo for displaying code and results

# Load libraries and datasets
library(tidyverse)
library(ggplot2)
library(palmerpenguins)
hotel_bookings <- read_csv("F:/R_Analytics/hotel_bookings.csv")

# Relationship between body mass & flipper length
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

ggplot(data = penguins) +
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Bar Charts
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))

# Facets
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + 
  facet_wrap(~species)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) + 
  facet_wrap(~cut)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + 
  facet_grid(sex ~ species)

# Hotel Bookings Visualizations
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = deposit_type))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type ~ market_segment) +
  theme(axis.text.x = element_text(angle = 45))

# Saving visualizations
ggsave("Diamonds_Cut_Precision.png")

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title = "Comparison of market segments by hotel type for hotel bookings",
       caption = paste0("Data from: ", mindate, " to ", maxdate),
       x = "Market Segment",
       y = "Number of Bookings")
ggsave('hotel_booking_chart.png', width = 16, height = 8)


# Setting up the environment
# Notes: Setting up my R environment by loading the 'tidyverse' and 'palmerpenguins' packages.
library(tidyverse)
library(palmerpenguins)

# Previewing our data
# Here we will have a preview of our penguins dataset
data(penguins)
View(penguins)

# Visualizations
# Here we go through a series of visualizations

# Flipper length and body mass in purple
# Here we plot flipper length against body mass
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color = "Purple")

# Flipper and body mass by species
# Here we plot flipper length against body mass and look at the breakdown by species
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(shape = species))

# Flipper length and body mass by species and sex
# Here we plot flipper length against body mass and look at the breakdown by species and sex
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(color = species, shape = species)) +
  facet_wrap(~sex)


# Relationship between body mass and flipper length with smoothed lines and color encoding
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))

# Relationship between body mass and flipper length with smoothed lines and linetype encoding
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

# Scatter plot with jitter for body mass and flipper length
ggplot(data = penguins) +
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Bar chart for the relationship between cut and clarity in diamonds
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))

# Facets for body mass and flipper length by species
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + 
  facet_wrap(~ species)

# Bar chart for color and cut in diamonds with facets for cut
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut) ) +
  facet_wrap(~ cut)

# Scatter plot for body mass and flipper length by species with facets for sex and species
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + 
  facet_grid(sex ~ species)

# Various data visualizations for hotel bookings
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = deposit_type))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~ deposit_type)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~ deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~ market_segment) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~ deposit_type ~ market_segment) +
  theme(axis.text.x = element_text(angle = 45))

# Save visualizations as image files
ggsave("Diamonds_Cut_Precision.png")

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~ hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title = "Comparison of market segments by hotel type for hotel bookings",
       caption = paste0("Data from: ", mindate, " to ", maxdate),
       x = "Market Segment",
       y = "Number of Bookings")

ggsave('hotel_booking_chart.png',
       width = 16,
       height = 8)


# Relationship between body mass and flipper length scatter plot for penguins dataset
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Display the first few rows and column names of the hotel_bookings dataset
head(hotel_bookings)
colnames(hotel_bookings)

# Scatter plot for the relationship between lead_time and children in hotel bookings
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

# Scatter plot for the relationship between stays_in_week_nights and children in hotel bookings
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_week_nights, y = children))

# Relationship between body mass and flipper length scatter plot for penguins dataset with color encoding
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))

# Relationship between body mass and flipper length scatter plot for penguins dataset with shape encoding
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species))

# Relationship between body mass and flipper length scatter plot for penguins dataset with color and shape encoding
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species, color = species))

# Relationship between body mass and flipper length scatter plot for penguins dataset with a specified color
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color = "Purple")

# Bar plot for the relationship between hotel and market_segment in hotel bookings
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

# Bar plot for the relationship between hotel and market_segment in hotel bookings with facet_wrap
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~ market_segment)

# Filter the hotel_bookings dataset for 'City Hotel' and 'Online TA' market_segment
onlineta_city_hotels <- filter(hotel_bookings, hotel == "City Hotel" & market_segment == "Online TA")
View(onlineta_city_hotels)

# Scatter plot for the relationship between lead_time and children in the filtered dataset
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))

# Labeling your visualizations
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", 
       subtitle = "Sample of Three Penguin Species",
       caption = "Data Collected by Dr. Kristen Gorman")

# Annotations
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", 
       subtitle = "Sample of Three Penguin Species",
       caption = "Data Collected by Dr. Kristen Gorman") +
  annotate("text", x = 220, y = 3500, label = "The Gentoos are the largest", 
           color = "purple", fontface = "bold", size = 4.5, angle = 25)
