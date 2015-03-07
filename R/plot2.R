plot2 <- function(data,outputDirectory) {
    
    png(file=paste0(outputDirectory,"plot2.png"))
    plot(data$DateTime,data$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="l")
    dev.off()
    
}