
readData <- function() {
	Data <- read.table("household_power_consumption.txt", header=T, sep=';', na.strings="?", dec=".",
	colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
	Data <- Data[(Data$Date == "1/2/2007") | (Data$Date == "2/2/2007"),]
	Data$datetime <- strptime(paste(Data$Date, Data$Time), "%d/%m/%Y %H:%M:%S")
	Data
}


