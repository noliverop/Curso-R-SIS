# creacion de ejemplos y graficos





# Get data:
library(gapminder)

# Charge libraries:
library(ggplot2)
library(gganimate)
library(gifski)

# Make a ggplot, but add frame=year: one image per year
myPlot <- ggplot(gapminder, aes(gdpPercap, lifeExp, size = pop, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_bw() +
  # gganimate specific bits:
  labs(title = 'Year: {frame_time}', x = 'GDP per capita', y = 'life expectancy') +
  transition_time(year) +
  ease_aes('linear')

animate(myPlot, duration = 10, fps = 20, width = 500, height = 500, renderer = gifski_renderer())

# Save at gif:
anim_save("271-ggplot2-animated-gif-chart-with-gganimate1.gif")



library(ggplot2)
library(dplyr)
library(hrbrthemes)
library(viridis)

# The dataset is provided in the gapminder library
library(gapminder)
data <- gapminder %>% filter(year=="2007") %>% dplyr::select(-year)

# Most basic bubble plot
data %>%
  arrange(desc(pop)) %>%
  mutate(country = factor(country, country)) %>%
  ggplot(aes(x=gdpPercap, y=lifeExp, size=pop, fill=continent)) +
  geom_point(alpha=0.5, shape=21, color="black") +
  scale_size(range = c(.1, 24), name="Population (M)") +
  scale_fill_viridis(discrete=TRUE, guide=FALSE, option="A") +
  theme_ipsum() +
  theme(legend.position="bottom") +
  ylab("Life Expectancy") +
  xlab("Gdp per Capita") +
  theme(legend.position = "none")






# Libraries
library(ggplot2)
library(dplyr)
library(plotly)
library(viridis)
library(hrbrthemes)

# The dataset is provided in the gapminder library
library(gapminder)
data <- gapminder %>% filter(year=="2007") %>% dplyr::select(-year)

# Interactive version
p <- data %>%
  mutate(gdpPercap=round(gdpPercap,0)) %>%
  mutate(pop=round(pop/1000000,2)) %>%
  mutate(lifeExp=round(lifeExp,1)) %>%
  
  # Reorder countries to having big bubbles on top
  arrange(desc(pop)) %>%
  mutate(country = factor(country, country)) %>%
  
  # prepare text for tooltip
  mutate(text = paste("Country: ", country, "\nPopulation (M): ", pop, "\nLife Expectancy: ", lifeExp, "\nGdp per capita: ", gdpPercap, sep="")) %>%
  
  # Classic ggplot
  ggplot( aes(x=gdpPercap, y=lifeExp, size = pop, color = continent, text=text)) +
  geom_point(alpha=0.7) +
  scale_size(range = c(1.4, 19), name="Population (M)") +
  scale_color_viridis(discrete=TRUE, guide=FALSE) +
  theme_ipsum() +
  theme(legend.position="none")

# turn ggplot interactive with plotly
pp <- ggplotly(p, tooltip="text")
pp

# save the widget
library(htmlwidgets)
saveWidget(pp, file=paste0( getwd(), "/imagenes/ej_plotly.html"))