load_data <- function(x) {
        library(dplyr)
        library(tidyr)
        library(lubridate)
        
        fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

        if(!file.exists("Dataset.zip")){ download.file(fileurl, "Dataset.zip", method = "curl") }
        if(!file.exists("household_power_consumption.txt")){ unzip("Dataset.zip") }        

        columnclasses <- c(rep("character", 2), rep("numeric",7))        
        x <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE, na.strings = c("?"), colClasses = columnclasses)
        
        x <- x %>% mutate(Date = dmy(Date), Time = hms(Time)) %>%
                filter(Date == "2007-02-01" | Date == "2007-02-02") %>%
                mutate(Date_Time = make_datetime(year = year(Date), 
                                                month = month(Date), 
                                                day = day(Date), 
                                                hour = hour(Time), 
                                                min = minute(Time), 
                                                sec = second(Time)))
        
}



