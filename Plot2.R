source("readData.R")
Plot2 <- function() {
	pwr<-readData()
	png(filename = "plot2.png", width = 480, height = 480, units = "px")
	with (pwr, plot(datetime, Global_active_power, type= "l", xlab="", ylab="Global active power (kilowatts)"))
	dev.off()
}