library(dplyr)
library(lubridate)

selectData = function()
{
    # We only process the 'big data' once
    if(!file.exists("selected_data.csv"))
        {
          df.all <- data.frame(read.table("household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors = FALSE))
          df <- df.all %>% filter(Date=='1/2/2007' | Date=='2/2/2007')
          write.table(df.two, file="selected_data.csv")
        }
    
    else
        df <- read.table("selected_data.csv")
    
    df$Global_active_power <- as.numeric(df$Global_active_power)
    return(df)
}