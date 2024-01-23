# loading already installed packages
data("ToothGrowth")
View(ToothGrowth)

# installing dplyr for data manipulation
install.packages('dplyr')

# filtering data
filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)

# sorting data
arrange(filtered_tg, len)

# Nested function
arrange(filter(ToothGrowth, dose==0.5), len)

# working with pipes
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5)%>%
  droup_by(supp)%>%
  summarize(mean_len = mean(len, na.rm = T),.group="drop")

filtered_toothgrowth
