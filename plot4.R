##Fourth Plot

#first check whether it has the file in the current dir.
if (!"load_data.R" %in% list.files()) {
      setwd("~/exploratory data  analysis/assign1")
} 

#load the data
source("load_data.R")

#create the png file
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

#set 4 plots: two rows, two columns
par(mfrow=c(2,2))

#top left
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

#top right
plot(DateTime, Voltage, 
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

#bottom left
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

#bottom right
plot(DateTime, Global_reactive_power, 
     type = "l",
     col="black",
     xlab = "datetime",
     ylab = colnames(newData)[4])

#"Global_active_power"

dev.off()