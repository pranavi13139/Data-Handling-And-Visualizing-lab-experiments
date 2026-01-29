library(ggplot2)

scores_group_data <- data.frame(
  Group = c("X","X","X","X","Y","Y","Y","Y"),
  Score = c(80, 85, 78, 92, 88, 76, 80, 84)
)

ggplot(scores_group_data, aes(x = Group, y = Score)) +
  geom_violin(fill = "skyblue", color = "black") +
  stat_summary(fun = median, geom = "point", size = 3) +
  labs(title = "Scores by Group", x = "Group", y = "Score") +
  theme_minimal()
