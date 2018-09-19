household <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
house_2007 <- subset(household, Date %in% c("1/2/2007","2/2/2007"))
house_2007$Date <- as.Date(house_2007$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
house_2007$Datetime <- as.POSIXct(datetime)

with(house_2007, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
