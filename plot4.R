source("load_data.R")

data <- load_data()

par(mfcol=c(2,2))

with(data,plot(Time,Global_active_power,type="l",xlab="",ylab="Global Active Power"))

with(data,plot(Time,Voltage,type="l",xlab="datetime",ylab="Voltage"))

with(data,plot(Time,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering"))
with(data,lines(Time,Sub_metering_2,col="red"))
with(data,lines(Time,Sub_metering_3,col="blue"))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lwd=c(1,1,1), col=c("black","red","blue"),bty="n")

with(data,plot(Time,Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power"))

