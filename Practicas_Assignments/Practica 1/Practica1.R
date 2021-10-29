rm(list=ls())
library(ggplot2)

plot = ggplot(diamonds, aes(x=price))

plot +
  geom_point(aes(y=carat, color=cut))

plot +
  geom_histogram(aes(fill=clarity), binwidth=650)

  
