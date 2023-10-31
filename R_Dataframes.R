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
