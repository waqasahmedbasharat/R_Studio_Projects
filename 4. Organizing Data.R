library(tidyverse)
penguins %>% arrange(bill_length_mm)

# for DESC order
penguins2 <- penguins %>% arrange(-bill_length_mm)
View(penguins2)

# using group by function and removing missing values and finding mean
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

#now we can also use max function
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))

# we can use both mean and  max functions 
penguins %>% group_by(island) %>% drop_na() %>% summarize(min_bill = mean(bill_length_mm), max_bill = max(bill_length_mm))

# filtering the species
penguins %>% filter(species == "Adelie")
