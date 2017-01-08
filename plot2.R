power<-read.table("C:/Users/conni/Documents/household_power_consumption.txt",header = T,sep = ";")
subsetPower <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]
Date <- as.Date(subsetPower$Date, format="%d/%m/%Y")
Time <- strptime(subsetPower$Time, format="%H:%M:%S")
globalActivePower <- as.numeric(subsetPower$Global_active_power)
png("plot2.png", width=480, height=480)
plot(Time, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
