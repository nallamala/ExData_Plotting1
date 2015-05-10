dat = read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE,strip.white = TRUE, na.strings = c("NA","") )

dat=rbind(dat[dat$Date=="1/2/2007",],dat[dat$Date=="2/2/2007",])

dat$Global_active_power = as.numeric(dat$Global_active_power)

dat$Date_Time = paste(dat$Date,dat$Time,sep=" ")

dat$Date_Time= strptime(dat$Date_Time,format = "%d/%m/%Y %H:%M:%S")

plot(x=dat$Date_Time,y=dat$Sub_metering_1,ylab="Energy sub meering", xlab="",type="l",col="black")
lines(x=dat$Date_Time,y=dat$Sub_metering_2,ylab="Energy sub meering", xlab="",type="l",col="red")
lines(x=dat$Date_Time,y=dat$Sub_metering_3,ylab="Energy sub meering", xlab="",type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),lty=1
       )