library(lubridate)
source("selectData.R")

#To ensure that mfrow is not already set previously
par(mfrow=c(1,1))

df <- selectData()
hist(df$Global_active_power, col = "red", main = "Global Active Power", xlab="Global Active Power (killowatts)")
dev.copy(png,'plot1.png')
dev.off()
