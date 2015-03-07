plot1 <- function(data,outputDirectory) {
    
    png(file=paste0(outputDirectory,"plot1.png"))
    hist(data$Global_active_power,xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power",col="red")
    dev.off()
    
}