library(tidyverse)
read_csv("data/dansk_kongerække_dk - Ark1.csv")

Kongerække <- read_csv("data/dansk_kongerække_dk - Ark1.csv")

Kongerække <- Kongerække %>%
  mutate(Regeringstid = Regeringslut - Regeringsstart)

colnames(Kongerække) 

Kongerække %>%
  ggplot(aes(y = Regeringstid, x = Regeringsstart))+
         geom_point()+
  geom_line()+
  geom_smooth()+
  labs(x = "Tid",
       Y = "Regeringstid")+
  theme_minimal()
