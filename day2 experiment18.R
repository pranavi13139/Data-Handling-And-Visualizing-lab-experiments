library(ggplot2)
library(hexbin)

xy_data <- data.frame(
  X = 1:8,
  Y = 2:9
)

ggplot(xy_data, aes(x = X, y = Y)) +
  geom_hex() +
  labs(title = "Hexbin Plot",
       x = "X",
       y = "Y") +
  theme_minimal()

