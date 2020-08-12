install.packages("tidyverse")
library(tidyverse)

#install remotes
install.packages("remotes")

#install data
remotes::install_github("allisonhorst/palmerpenguins")
library(palmerpenguins)
penguins

glimpse(penguins)

#exploring import
unique(penguins$species)
unique(penguins$island)

#data viz scatter size x species
ggplot(data = penguins,
                      aes(x = flipper_length_mm,
                          y = body_mass_g) +
  geom_point(aes(color = species,
                 shape = species),
             size = 3,
             alpha = 0.8) +
  #theme_minimal() +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       subtitle = "Flipper length and body mass for Adelie, Chinstrapand Gentoo Penguins",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species" +
  theme_minimal() 
  
  #data viz scatter size x island
  ggplot(data = penguins,
         aes(x = flipper_length_mm,
             y = body_mass_g) +
           geom_point(aes(color = islands,
                          shape = species),
                      size = 3,
                      alpha = 0.8) +
           #theme_minimal() +
           scale_color_manual(values = c("darkorange","purple","cyan4")) +
           labs(title = "Penguin size, Palmer Station LTER",
                subtitle = "Flipper length and body mass for Adelie, Chinstrapand Gentoo Penguins",
                x = "Flipper length (mm)",
                y = "Body mass (g)",
                color = "Penguin island",
                shape = "Penguin species" +
                  theme_minimal() 
                
#data viz plot                
            
