source("load_data.R")

data <- load_data()

png("plot3.png")

with(data,plot(Time,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering"))
with(data,lines(Time,Sub_metering_2,col="red"))
with(data,lines(Time,Sub_metering_3,col="blue"))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lwd=c(1,1,1), col=c("black","red","blue"))

dev.off()