source("load_data.R")

png("plot2.png")

with(load_data(),plot(Time,Global_active_power,
    type="l",xlab="",ylab="Global Active Power (kilowatts)"))

dev.off()