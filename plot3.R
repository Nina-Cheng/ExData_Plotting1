png(file = "plot3.png")
  ## Read data
  Data<-read.table("household_power_consumption.txt",header= TRUE, sep=";", colClasses= "character")
  SubData<-Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
  ## Convert to time
  t<-strptime(paste(as.Date(SubData$Date,"%d/%m/%Y"),SubData$Time),"%Y-%m-%d %H:%M:%S")

  sub_metering_1<-as.numeric(SubData$Sub_metering_1)
  sub_metering_2<-as.numeric(SubData$Sub_metering_2)
  sub_metering_3<-as.numeric(SubData$Sub_metering_3)

  plot(t,sub_metering_1,type = "l",ylab="Energy sub metering",xlab="")
  lines(t,sub_metering_2,col="red")
  lines(t,sub_metering_3,col= "blue")
  legend("topright",lty=1,col=c("black","red","blue"),legend=c("sub_metering_1","sub_metering_2","sub_metering_3"))

dev.off()