colleagues = c("Charles", "Chelimo", "James", "Kate", "Simon", "Violet")
colleagues
typeof(colleagues)  
length(colleagues)
is.integer(colleagues)
#my lsit
y <- list("me", 50L, 20.35, FALSE)
str(y)
z <- list(list(list(1 , 3, 5, "Kenya", TRUE)))
str(z)
list('Kenya' = 254, 'Uganda' = 256, 'Tanzania' = 255)
library(tidyverse)
library(lubridate)
today()
now()
dmy("22nd January, 2019")
dmy_hms("22nd July, 2010 23:30:45")
as_date(now())
dir.create("destination_folder")
file.create("my_fisrt_file.docx")
file.copy("my_fisrt_file.docx", "destination_folder")
matrix(c(3:8), nrow = 2)
matrix(c(2:7), ncol = 2)

#Calculations
basket_1 <- 250
basket_2 <- 321
basket_3 <- 503
total_mangoes <- basket_1 + basket_2 + basket_3
total_mangoes
product_mangoes <- basket_1 * basket_2 * basket_3
product_mangoes
