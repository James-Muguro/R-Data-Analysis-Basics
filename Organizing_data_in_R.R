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
