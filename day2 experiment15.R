library(ggplot2)

sales_region_data <- data.frame(
  Region = c("North","South","East","West"),
  Sales = c(150, 200, 180, 210)
)

ggplot(sales_region_data, aes(x = Region, y = Sales)) +
  geom_segment(aes(xend = Region, yend = 0),
               color = "gray") +
  geom_point(color = "blue", size = 5) +
  labs(title = "Sales by Region",
       x = "Region",
       y = "Sales") +
  theme_minimal()
