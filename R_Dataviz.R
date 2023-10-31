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
view(onlineta_city_hotels)

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



