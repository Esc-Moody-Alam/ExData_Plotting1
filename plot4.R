df <- read.table("selected_data.csv")

par(mfrow=c(2,2))

#Plot 4.1
plot(dmy(df$Date)+hms(df$Time), df$Global_active_power,  
     type='l', ylab="Global Active Power (killowatts)", xlab=" ")

#Plot 4.2
plot(dmy(df$Date)+hms(df$Time), df$Voltage,  
     type='l', ylab="Voltage", xlab="datetime")

#Plot 4.3
y = dmy(df$Date)+hms(df$Time)
plot(y, df$Sub_metering_1,  type='l', ylab="Energy sub metering", xlab=" ")
lines(y, df$Sub_metering_2, col='red')
lines(y, df$Sub_metering_3, col='blue')
legend("topright", legend=names(df[,7:9]), col=c("black", "red", "blue"), lty=c(1,1,1), cex=0.8)

#Plot 4.4
plot(dmy(df$Date)+hms(df$Time), df$Global_reactive_power,  
     type='l', xlab="datetime")
dev.copy(png,'plot4.png')
dev.off()
