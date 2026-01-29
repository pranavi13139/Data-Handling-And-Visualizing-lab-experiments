library(ggplot2)

marks_data <- data.frame(
  Marks = c(35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90)
)

ggplot(marks_data, aes(x = Marks)) +
  geom_histogram(binwidth = 10,
                 fill = "skyblue",
                 color = "black",
                 alpha = 0.8) +
  labs(title = "Marks Distribution",
       x = "Marks",
       y = "Number of Students") +
  theme_minimal()
