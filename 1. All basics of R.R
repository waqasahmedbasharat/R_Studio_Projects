
# installing package and then plotting ggplot
install.packages('palmerpenguins')
install.packages('ggplot2')

library('palmerpenguins')
library('ggplot2')

# plotting the scatter plot
ggplot(data=penguins, aes(x=flipper_length_mm, 
y=body_mass_g)) + geom_point(aes(color=species, shape = species)) +
  facet_wrap(~species) + labs(title = "Palmer Penguins: Body vs. Flipper Length")
View(penguins)

# Variable wxamples
first_variable <- "This is my Variable"
first_variable

# Vector creation
vec_1 <- c(12, 23, 45, 8, 23, 55)
vec_1

# our first calculations
sales_1 <- 644545.3
sales_2 <- 345673.3
thisyear_sales <- sales_1 + sales_2
thisyear_sales

# checkout out installed packges
installed.packages()

# then installing new package
library(class)

# updating packages
update.packages()

# tidyverse librray installation 
install.packages("tidyverse")
library("tidyverse")
