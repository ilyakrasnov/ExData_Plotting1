###################################################### 
# Data Science Track on Coursera
# Course "Exploratoty Data Analysis"
# Assigenment 1
# Plot 2
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
png(file="plot2.png")
plot(consumption$Date,consumption$Global_active_power,type="l")
dev.off()