###############################################################
## Plotting a multiple charts on one page (plot4)             #
##                                                            #
## Author: DatatrainR                                         #
###############################################################

### IF YOU WANT TO REPLICATE: SET WD
setwd("E:/Lukas/Coursera/Data Specialization/exploratory_da/ExData_Plotting1")

### PLEASE RUN plot1.R FIRST
if(!exists("februarypower")){
        source("plot1.r")
}



##################
### Multiplot  ###
##################

#specify canvas
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))


#Global active power plot
plot(februarypower[,Datetime], februarypower[,Global_active_power],
     type = "l",
     ylab = "Global Active Power",
     xlab = "") 

#Voltage plot
plot(februarypower[,Datetime], februarypower[,Voltage],
     type = "l",
     ylab = "Voltage",
     xlab = "datetime") 

#Sub metering plot
plot(februarypower[,Datetime], februarypower[,Sub_metering_1],
     type = "l",
     ylab = "Energy sub metering",
     xlab = "")
lines(februarypower[,Datetime], februarypower[,Sub_metering_2], col = "red")
lines(februarypower[,Datetime], februarypower[,Sub_metering_3], col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Global reactive power plot
plot(februarypower[,Datetime], februarypower[,Global_reactive_power],
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime") 


dev.off()
