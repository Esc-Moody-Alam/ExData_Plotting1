library(lubridate)
source("selectData.R")

df <- selectData()

plot(dmy(df$Date)+hms(df$Time), df$Global_active_power,  
     type='l', ylab="Global Active Power (killowatts)", xlab=" ")
dev.copy(png,'plot2.png')
dev.off()
