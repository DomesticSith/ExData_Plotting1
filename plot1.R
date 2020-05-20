source("load_data.R")

mydata <- load_data()

png("plot1.png")
hist(mydata$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()