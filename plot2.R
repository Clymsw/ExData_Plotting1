# Load data

source("loadData.R")


# Plot 2
plot(timeDataSetToUse, dataSetToUse$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kiloWatts)",
     xlab = "",
     main = ""
)

dev.copy(png, file = "plot2.png")
dev.off()