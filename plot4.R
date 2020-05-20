source("load_data.R")

#load data
mydata <- load_data()

#Open file
png("plot4.png")

#Set grid
par(mfrow = c(2,2))

#Top Left
with(mydata, plot(Date_Time, Global_active_power, xlab = "", ylab = "Global Active Power", type = "l"))

#Top Right
with(mydata, plot(Date_Time, Voltage, xlab = "datetime", ylab = "Voltage", type = "l"))

#Bottom Left
with(mydata, plot(Date_Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l"))
with(mydata, lines(Date_Time, Sub_metering_2, col = "red"))
with(mydata, lines(Date_Time, Sub_metering_3, col = "blue"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1), bty = "n", cex = 0.95)

#Bottom Right
par(yaxp = c(0,0.5,0.1))
with(mydata, plot(Date_Time, Global_reactive_power, xlab = "datetime", type = "l"))

#Close file
dev.off()