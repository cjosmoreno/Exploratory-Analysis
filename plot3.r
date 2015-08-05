setwd("C:/Users/CarlosJos�/Desktop/Data Mining/Jonhs Hopkins/Ciencia de Datos/Exploratory Data Analysis")

source("loading_Data.R")

plot3 <- paste(getwd(), "/graficos/plot3.png", sep = "")
if(!file.exists(plot3)){
	png("graficos/plot3.png", width = 480, height = 480)
	plot(cargardatos$Time, cargardatos$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(cargardatos$Time, cargardatos$Sub_metering_2, type="l", col="red")
	lines(cargardatos$Time, cargardatos$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
	dev.off()
} else {
	plot(cargardatos$Time, cargardatos$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(cargardatos$Time, cargardatos$Sub_metering_2, type="l", col="red")
	lines(cargardatos$Time, cargardatos$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
}