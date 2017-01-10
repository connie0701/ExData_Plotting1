power<-read.table("C:/Users/conni/Documents/household_power_consumption.txt",header = T,sep = ";", stringsAsFactors=FALSE, dec=".")
subsetPower <- power[power$Date %in% c("1/2/2007","2/2/2007") ,] 
globalActivePower<-as.numeric(subsetPower$Global_active_power)
png("plot1.png",width = 480,height = 480)
hist(globalActivePower,col="red",main = "Global Active Power",xlab="Global Active Power(kilowatts)",ylab = "Frequency")
dev.off()

