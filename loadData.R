# Load data
sFileName = "household_power_consumption.txt";

rawdata <- read.table(sFileName,
                      header=TRUE,
                      sep=";",
                      stringsAsFactors = FALSE,
                      na.strings = "?" 
)

#Extract datetime vector
datetime <- strptime(paste(rawdata$Date,rawdata$Time), "%d/%m/%Y %H:%M:%S")
datetime <- as.POSIXct(datetime)

#Find the two days we want
bTimeToUse <- datetime>=as.POSIXct("2007-02-01") & datetime<as.POSIXct("2007-02-03")

#And extract the subset of data
dataSetToUse <- rawdata[bTimeToUse,]
dataSetToUse <- dataSetToUse[complete.cases(dataSetToUse),] #Have rows of NAs for some reason

#Extract final time vector for data subset
timeDataSetToUse <- as.POSIXct(strptime(paste(dataSetToUse$Date,dataSetToUse$Time), "%d/%m/%Y %H:%M:%S"))

