library(ggplot2)

# Data
profit_loss_data <- data.frame(
  Month = c("Jan","Feb","Mar","Apr","May"),
  Amount = c(100, -20, 50, -10, 80)
)

# Cumulative calculations
profit_loss_data$End <- cumsum(profit_loss_data$Amount)
profit_loss_data$Start <- c(0, head(profit_loss_data$End, -1))

# Create numeric x-axis
profit_loss_data$x <- seq_len(nrow(profit_loss_data))

# Plot
ggplot(profit_loss_data,
       aes(x = x, ymin = Start, ymax = End, fill = Amount > 0)) +
  geom_rect(aes(xmin = x - 0.4, xmax = x + 0.4)) +
  scale_x_continuous(breaks = profit_loss_data$x,
                     labels = profit_loss_data$Month) +
  scale_fill_manual(values = c("red", "green"),
                    labels = c("Loss", "Profit")) +
  labs(title = "Monthly Profit and Loss",
       x = "Month",
       y = "Amount") +
  theme_minimal()
