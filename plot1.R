###############################################################
## Plotting a histogram for Global Active Power (plot1)       #
##                                                            #
## Author: DatatrainR                                         #
###############################################################


#################
#### SETUP   ####
#################

### IF YOU WANT TO REPLICATE: SET WD
setwd("E:/Lukas/Coursera/Data Specialization/exploratory_da/ExData_Plotting1")

#Load packages
require(data.table)

#Download zipfile to wd, unzip (only if not already there)
if(!file.exists("zippeddata.zip")){
webadress <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url = webadress, destfile = "zippeddata.zip", method = "auto")
unzip("zippeddata.zip")
}

###################
#### Load Data  ###
###################

#Read .txt file and convert to data table
powerdata <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
powerdatatable <- data.table(powerdata)

#Have a look at data structure
powerdatatable
str(powerdatatable)

########################
#### Transform Data  ###
#######################

#select relevant 2-day-period and format date/time variable (using data.table commands)
februarypower <- powerdatatable[Date %in% c("1/2/2007","2/2/2007")]
februarypower[, Datetime := paste0(Date," ",Time)]
februarypower[, Datetime := as.POSIXct(Datetime, "%d/%m/%Y %H:%M:%S", tz = "")]


  ##########################
 ### PLOT THAT SHIZNIT  ###
##########################
png(filename = "plot1.png", width = 480, height = 480)

hist(februarypower[,Global_active_power], 
     col = "red", 
     ylim = c(0, 1200), 
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")
dev.off()
