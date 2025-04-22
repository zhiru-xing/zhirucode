library(treemapify)
library(ggplot2)
library(readxl)

data <- read_excel("C:/Users/ALIENWARE/Desktop/output.xlsx")

ggplot(data, aes(area = mean_eut, fill = mean_ghg, label = paste(age_group, sex, sep = "\n"), subgroup = diet_group)) +
  geom_treemap() +
  geom_treemap_subgroup_border(color = 'white') +
  geom_treemap_subgroup_text(place = "top", grow = TRUE, color = "black", size = 0.5) +
  geom_treemap_text(place = "topleft", colour = "white", size = 10) +
  scale_fill_gradient(low = "lightblue", high = "darkblue", name = "Mean ghg") +
  theme_minimal() +
  labs(title = "The environmental impact of different age groups in various dietary categories", 
       caption = "The area of the rectangle respesents eutrophication pollution",
       fill = "Greenhouse gas emissions") +
  theme(legend.title = element_text("Mean ghg"), legend.position = "right")
