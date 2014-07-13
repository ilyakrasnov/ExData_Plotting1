###################################################### 
# Data Science Track on Coursera
# Course "Exploratoty Data Analysis"
# Assigenment 1
# Plot 3
###################################################### 

# Get the data using the `sqldf` package

library(sqldf)
myFile <- "household_power_consumption.txt"
mySql <- "SELECT * FROM file WHERE Date='1/2/2007' OR Date='2/2/2007'"
consumption <- read.csv2.sql(myFile,mySql)

# Convert the dates
dateTime <- strptime(paste(consumption$Date,consumption$Time),format="%d/%m/%Y %H:%M:%S")
consumption$Date <- dateTime

# Make the plot
png(file="plot3.png")
plot(consumption$Date,consumption$Sub_metering_1,type="l",xlab=NA,ylab="Energy sub metering")
lines(consumption$Date,consumption$Sub_metering_2,type="l",col="red")
lines(consumption$Date,consumption$Sub_metering_3,type="l",col="blue")

col <- c("black","red","blue")
colnms <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright", col=col, lwd=c(1, 1.5, 2), legend=colnms)
dev.off()




legend("topleft", col=col, lwd=c(1, 1.5, 2),
       +        legend=colnames(stocks))