###############################################################
## Plotting a linechart for Sub meters (plot4)                #
##                                                            #
## Author: DatatrainR                                         #
###############################################################

### IF YOU WANT TO REPLICATE: SET WD
setwd("E:/Lukas/Coursera/Data Specialization/exploratory_da/ExData_Plotting1")

### PLEASE RUN plot1.R FIRST
if(!exists("februarypower")){
        source("plot1.r")
}

##########################
### PLOT THAT SHIZNIT  ###
##########################

png(filename = "plot3.png", width = 480, height = 480)

plot(februarypower[,Datetime], februarypower[,Sub_metering_1],
     type = "l",
     ylab = "Energy sub metering",
     xlab = "")
lines(februarypower[,Datetime], februarypower[,Sub_metering_2], col = "red")
lines(februarypower[,Datetime], februarypower[,Sub_metering_3], col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
