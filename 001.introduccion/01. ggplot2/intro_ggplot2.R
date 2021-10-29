library(ggplot2)

# View(mtcars)

ggplot(mpg, aes(class))
ggplot(mpg, aes(class)) + geom_bar()

ggplot(mpg, aes(x=class, y=displ)) +
  geom_point()


ggplot(mpg, aes(x=class)) + geom_bar(fill="grey")

ggplot(mpg, aes(x=cty)) +
  geom_bar(fill="grey") +
  geom_point(aes(y=displ, size=hwy, color=class))


ggplot(mpg, aes(x=cty)) +
  geom_point(aes(y=displ, size=hwy, color=class), alpha=0.3)

ggplot(mpg, aes(x=cty)) +
  geom_jitter(aes(y=displ, size=hwy, color=class))

ggplot(mpg, aes(x=cty,y=displ)) +
  geom_density2d() +
  geom_jitter()

ggplot(mpg, aes(x=cty, y=displ)) +
  geom_point() +
  facet_grid(.~year)


ggplot(mpg, aes(x=cty, y=displ)) +
  geom_point() +
  facet_grid(year~.)

ggplot(mpg, aes(x=cty, y=displ)) +
  geom_point() +
  facet_grid(year~.)


ggplot(mpg, aes(x=cty, y=displ)) +
  geom_point() +
  facet_grid(year + class ~ .)

ggplot(mpg, aes(x=cty, y=displ)) +
  geom_point() +
  facet_grid(year ~ class)



ggplot(mpg, aes(x=cty, y=displ)) +
  geom_point() +
  facet_grid(year ~ class) +
  scale_x_log10()








