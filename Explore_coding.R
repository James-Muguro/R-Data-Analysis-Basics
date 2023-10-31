#The AND Operator
x <- 25
x > 10 & x < 30
x > 20 & x < 25

# The OR Operator
y <- 30
y > 40 | y < 35
y > 40 | y < 25

#The NOT Operator
z <- 0
!z
w <- 15
!w

#IF Statement
a <- 15
if (a > 5) {
  print("take a walk in Ibiza")
}

#The ELSE Statement
b <- 10
if (b > 15) {
  print("Go for a walk")
} else {
  print("Stay indoors and watch Tv")
}

# The ELSE IF Statement
c <- 20
if (c > 25) {
  print("Go for a walk")
} else if (c==20) {
  print("Make a determination")
} else {
  print("Stay indoors and watch Tv")
}

# Loading data into our environment
head(diamonds)
str(diamonds)
glimpse(diamonds)
colnames(diamonds)
rename(diamonds, x = cordinates, y = elevation, z = info)
summarize(diamonds, mean_carat = mean(carat))
ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point()
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point()
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  facet_wrap(~cut)