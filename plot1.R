png(file = "plot1.png")
  ## read data
  Data<-read.table("household_power_consumption.txt",header= TRUE, sep=";", colClasses= "character")
  SubData<-Data[Data$Date %in% c("1/2/2007","2/2/2007"),]

  GAP<-as.numeric(SubData$Global_active_power)
  ## plot hist
  hist(GAP,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()