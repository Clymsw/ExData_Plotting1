# Load data

source("loadData.R")


# Plot 1
hist(dataSetToUse$Global_active_power,
     breaks = seq(0,ceiling(max(dataSetToUse$Global_active_power, na.rm = TRUE)*2)/2,0.5),
     col = "Red",
     xlab = "Global Active Power (kiloWatts)",
     main = "Global Active Power"
)

dev.copy(png, file = "plot1.png")
dev.off()