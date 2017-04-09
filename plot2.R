###############################################################
## Plotting a linechart for Global Active Power (plot2)       #
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
png(filename = "plot2.png", width = 480, height = 480)

plot(februarypower[,Datetime], februarypower[,Global_active_power],
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "") 
dev.off()
