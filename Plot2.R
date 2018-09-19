household <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
house_2007 <- subset(household, Date %in% c("1/2/2007","2/2/2007"))
house_2007$Date <- as.Date(house_2007$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(house_2007$Date), data1$Time)
house_2007$Datetime <- as.POSIXct(datetime)

## Plot 2
with(house_2007, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

