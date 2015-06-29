source("load_data.R")

png("plot1.png")

with(load_data(),hist(Global_active_power, main="Global Active Power", 
    xlab= "Global Active Power (kilowatts)", col="red"))

dev.off()


