# Create the data
temperature_data <- data.frame(
  Month = c("Jan","Feb","Mar","Apr","May"),
  City_A = c(5,6,7,8,9),
  City_B = c(10,11,12,13,14),
  City_C = c(15,16,17,18,19)
)

# Convert data (remove Month column)
temp_matrix <- as.matrix(temperature_data[, -1])

# Set row names as Month
rownames(temp_matrix) <- temperature_data$Month

# Draw heatmap
heatmap(temp_matrix,
        col = colorRampPalette(c("white", "red"))(100),
        Rowv = NA,
        Colv = NA,
        scale = "none",
        main = "Monthly Temperatures")

