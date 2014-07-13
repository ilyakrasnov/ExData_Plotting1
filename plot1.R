###################################################### 
# Data Science Track on Coursera
# Course "Exploratoty Data Analysis"
# Assigenment 1
# Plot 1
###################################################### 

# Get the data using the `sqldf` package

library(sqldf)
myFile <- "~/Dropbox (Personal)/R/ExpData/household_power_consumption.txt"
mySql <- "SELECT * FROM file WHERE Date='1/2/2007' OR Date='2/2/2007'"
consumption <- read.csv2.sql(myFile,mySql)

# Make the plot
png(file="plot1.png")
hist(consumtion$Global_active_power,col="red",main="Global Active Power")
dev.off()