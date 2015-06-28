#setwd("~/projects/edu/exdata/ExData_Plotting1")


source("load_data.R")

with(load_data(),hist(Global_active_power, main="Global Active Power", 
    xlab= "Global Active Power (kilowatts)", col="red"))




