start <- function(directory=getwd()) {
    
    #get course project 1 data
    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    temp <- tempfile()
    download.file(url,temp)
    hpc <- read.table(unz(temp,"household_power_consumption.txt"),header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE,comment.char="")
    unlink(temp)
    data <-hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]
    data$DateTime <- as.POSIXct(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")
    
    #source the plot functions, which need to be in the R folder of the specified directory or working directory
    rDirectory <- paste0(directory,"/R/")
    for (file in list.files(rDirectory)) {
        source(paste0(rDirectory,file))
    }
    
    #pass data to create the required project graphs, putting them in the output directory
    outputDirectory <- paste0(directory,"/output/")
    plot1(data,outputDirectory)
    plot2(data,outputDirectory)
    plot3(data,outputDirectory)
    plot4(data,outputDirectory)
    
}