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
  theme(axis.text.x = element_text(angle = 45)

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



