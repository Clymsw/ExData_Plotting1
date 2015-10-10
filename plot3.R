# Load data

source("loadData.R")


# Plot 3
png("plot3.png")

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

#Add legend
legend( as.POSIXct("2007-02-02 07:15:00"), 39.5,
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),
       lwd=c(2.5,2.5,2.5),
       col=c("black","red","blue")
)

dev.off()
