png(file = "plot2.png")
  Data<-read.table("household_power_consumption.txt",header= TRUE, sep=";", colClasses= "character")
  SubData<-Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
  GAP<-as.numeric(SubData$Global_active_power)
  t<-strptime(paste(as.Date(SubData$Date,"%d/%m/%Y"),SubData$Time),"%Y-%m-%d %H:%M:%S")
  plot(t,GAP,type = "l",ylab="Global Active Power (kilowatts)",xlab="")


dev.off()