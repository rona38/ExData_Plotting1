source("readData.R")
Plot3 <- function() {
	pwr<-readData()
	png(filename = "plot3.png", width = 480, height = 480, units = "px")
	cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
	with (pwr, {
		plot(datetime, Sub_metering_1 , type= "l",  xlab="", ylab="Energy sub metering")
		lines(datetime, Sub_metering_2 , type= "l", col="blue")
		lines(datetime, Sub_metering_3 , type= "l", col="red")
		legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
	})
	dev.off()
}