# Load data

source("loadData.R")


# Plot 4
png("plot4.png", width = 800, height = 800)

par(mfrow=c(2,2))

#Top left
plot(timeDataSetToUse, dataSetToUse$Global_active_power,
     type = "l",
     ylab = "Global Active Power",
     xlab = "",
     main = ""
)

#Top right
plot(timeDataSetToUse, dataSetToUse$Voltage,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime",
     main = ""
)

#Bottom left
plot(timeDataSetToUse, dataSetToUse$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = "",
     main = ""
)

points(timeDataSetToUse, dataSetToUse$Sub_metering_2,
       type = "l", 
       col = "Red"
)

points(timeDataSetToUse, dataSetToUse$Sub_metering_3,
       type = "l", 
       col = "Blue"
)

legend( as.POSIXct("2007-02-02 06:00:00"), 39.5,
        c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
        lty=c(1,1,1),
#        lwd=c(2.5,2.5,2.5),
        col=c("black","red","blue"),
        bty = "n"
)

#Bottom right
plot(timeDataSetToUse, dataSetToUse$Global_reactive_power,
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime",
     main = ""
)

dev.off()
