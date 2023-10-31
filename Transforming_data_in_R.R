# Separate the 'name' column into 'first_name' and 'last_name' using a space separator
separate(employee, name, into = c("first_name", "last_name"), sep = ' ')

# Load the 'quartet' dataset
data("quartet")
view(quartet)

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
