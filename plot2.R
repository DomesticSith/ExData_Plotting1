source("load_data.R")

mydata <- load_data()

png("plot2.png")
with(mydata, plot(Date_Time, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l"))
dev.off()