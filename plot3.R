library(lubridate)
source("selectData.R")

df <- selectData()
y = dmy(df$Date)+hms(df$Time)
plot(y, df$Sub_metering_1,  type='l', ylab="Energy sub metering", xlab=" ")
lines(y, df$Sub_metering_2, col='red')
lines(y, df$Sub_metering_3, col='blue')
legend("topright", legend=names(df[,7:9]), col=c("black", "red", "blue"), lty=c(1,1,1), cex=0.8)
dev.copy(png,'plot3.png')
dev.off()
