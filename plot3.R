source("load_data.R")

mydata <- load_data()

png("plot3.png")
with(mydata, plot(Date_Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l"))
with(mydata, lines(Date_Time, Sub_metering_2, col = "red"))
with(mydata, lines(Date_Time, Sub_metering_3, col = "blue"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1))
dev.off()