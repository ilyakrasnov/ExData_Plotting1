###################################################### 
# Data Science Track on Coursera
# Course "Exploratoty Data Analysis"
# Assigenment 1
# Plot 4
###################################################### 

# Get the data using the `sqldf` package

library(sqldf)
myFile <- "household_power_consumption.txt"
mySql <- "SELECT * FROM file WHERE Date='1/2/2007' OR Date='2/2/2007'"
consumption <- read.csv2.sql(myFile,mySql)

# Convert the dates
dateTime <- strptime(paste(consumption$Date,consumption$Time),format="%d/%m/%Y %H:%M:%S")
consumption$Date <- dateTime

# Prepare multiplot canvas
png(file="plot4.png")
par(mfrow=c(2,2))

# Open the device 


# Add plot 1
plot(consumption$Date,consumption$Global_active_power,type="l")
# Add plot 2
plot(consumption$Date,consumption$Voltage,type="l")
# Add plot 3
plot(consumption$Date,consumption$Sub_metering_1,type="l")
lines(consumption$Date,consumption$Sub_metering_2,type="l",col="red")
lines(consumption$Date,consumption$Sub_metering_3,type="l",col="blue")
col <- c("black","red","blue")
colnms <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright", col=col, lwd=c(1, 1.5, 2), legend=colnms,box.col=NA)
# Add plot 4
plot(consumption$Date,consumption$Global_reactive_power,type="l")

dev.off()