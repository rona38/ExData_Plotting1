source("readData.R")
Plot4 <- function() {
	pwr<-readData()
	png(filename = "plot4.png", width = 480, height = 480, units = "px")
	par(mfrow = c(2, 2))

	with (pwr, plot(datetime, Global_active_power, type= "l", xlab="", ylab="Global Active Power"))

	with (pwr, plot(datetime, Voltage, type= "l", ylab="Voltage"))

	cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
	with (pwr, {
		plot(datetime, Sub_metering_1 , type= "l",  xlab="", ylab="Energy sub metering")
		lines(datetime, Sub_metering_2 , type= "l", col="blue")
		lines(datetime, Sub_metering_3 , type= "l", col="red")
		legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
	})

	with (pwr, plot(datetime, Global_reactive_power, type= "l", ylab="Global Reactive Power"))
	dev.off()
}