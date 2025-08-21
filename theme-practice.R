rm(list = ls())

library(tidyverse)
library(palmerpenguins)

#sourcing my function 
source(here::here("my-ggplot-themes.R"))

ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(aes(color = species)) +
  labs(x = "Flipper length (mm)",
       y = "Body mass (grams)",
       title = "Palmer penguins body sizes") +
  my_theme()
