# The AND Operator
x <- 25
result1 <- x > 10 & x < 30
result2 <- x > 20 & x < 25

# The OR Operator
y <- 30
result3 <- y > 40 | y < 35
result4 <- y > 40 | y < 25

# The NOT Operator
z <- 0
not_result1 <- !z
w <- 15
not_result2 <- !w

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
