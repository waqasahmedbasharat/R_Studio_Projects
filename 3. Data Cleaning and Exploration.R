# installing packages for data cleaning
install.packages('here')
library("here")

install.packages('skimr')
library("skimr")

install.packages('janitor')
library("janitor")

install.packages('palmerpenguins')
library("palmerpenguins")

# data summary using skim 
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

# using pipe for seeing species column
penguins%>%
  select(species)

# excluding species
penguins%>%
  select(-species)

# renaming the columns names
penguins%>%
  rename(island_new = island)

# Making all column names uppercase
rename_with(penguins, toupper)

# cleaning names for uniqueness
clean_names(penguins)