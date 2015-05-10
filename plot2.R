dat = read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE,strip.white = TRUE, na.strings = c("NA","") )

dat2=rbind(dat[dat$Date=="1/2/2007",],dat[dat$Date=="2/2/2007",])

dat2$Global_active_power = as.numeric(dat2$Global_active_power)

dat2$Date_Time = paste(dat2$Date,dat2$Time,sep=" ")

dat2$Date_Time= strptime(dat2$Date_Time,format = "%d/%m/%Y %H:%M:%S")

plot(dat2$Date_Time,dat2$Global_active_power,type="l",ylab="Global Active Power (Kilowatts)",xlab=" ")