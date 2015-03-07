plot4 <- function(data,outputDirectory) {
    
    png(file=paste0(outputDirectory,"plot4.png"))
    par(mfrow=c(2,2))
    with(data,{
        plot(DateTime,Global_active_power,xlab="",ylab="Global Active Power",type="l")
        
        plot(DateTime,Voltage,xlab="datetime",ylab="Voltage",type="l")
        
        plot(DateTime,Sub_metering_1,xlab="",ylab="Energy sub metering",type="l")
        lines(DateTime,Sub_metering_2,type="l",col="red")
        lines(DateTime,Sub_metering_3,type="l",col="blue")
        legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
        
        plot(DateTime,Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")
    })
    dev.off()
    
}