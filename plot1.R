dat = read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE,strip.white = TRUE, na.strings = c("NA","") )

dat$Global_active_power = as.numeric(dat$Global_active_power)

dat = rbind(dat[dat$Date=="1/2/2007",3],dat[dat$Date=="2/2/2007",3])

hist(dat,col="red",main="Global Active Power",xlab="Global_active_power (kilowatts)")
