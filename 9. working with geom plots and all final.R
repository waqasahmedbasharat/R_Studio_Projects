# getting started with ggplot2
library(ggplot2)
library(palmerpenguins)

# coding for ggplot2
ggplot(data=penguins) + geom_smooth(mapping=aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(mapping=aes(x = flipper_length_mm, y = body_mass_g))

# adding title and annotation
ggplot(data=penguins) + 
  geom_point(mapping=aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_grid(sex~species) + labs(title = "Palmer Penguins", subtitle = "Sample oof three Penguins species",caption = "Data collected by Waqas Ahmed") +
  annotate("text", x=220, y=3500, label = "The Gentoos are the largest", fontface = "bold", size = .5, angle = 25)

#saving the plot
ggsave("Penguins.png")

# Load required packages
library(ggplot2)

# Access the diamonds dataset from ggplot2
data(diamonds)
View(diamonds)

# Now you can work with the diamonds dataset
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=color, fill = cut)) +
  facet_wrap(~cut)


