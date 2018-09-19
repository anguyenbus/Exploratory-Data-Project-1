household <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
house_2007 <- subset(household, Date %in% c("1/2/2007","2/2/2007"))
house_2007$Date <- as.Date(house_2007$Date, format="%d/%m/%Y")
hist(house_2007$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
