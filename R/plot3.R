plot3 <- function(data,outputDirectory) {
    
    png(file=paste0(outputDirectory,"plot3.png"))
    plot(data$DateTime,data$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l")
    lines(data$DateTime,data$Sub_metering_2,type="l",col="red")
    lines(data$DateTime,data$Sub_metering_3,type="l",col="blue")
    legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    dev.off()
    
}