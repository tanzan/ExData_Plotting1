load_data <- function() {
  if(!file.exists("household_power_consumption.txt")){
    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    
    download.file(url,"consumption.zip",method="curl")
    
    unzip("consumption.zip")  
  }  
  
  library(sqldf)
  library(dplyr)
  
  data <- read.csv2.sql("household_power_consumption.txt", 
                         sql="select * from file where Date in('1/2/2007','2/2/2007')")
  
  data %>% 
  mutate(Time = as.POSIXct(paste(Date,Time),format="%d/%m/%Y %H:%M:%S")) %>%
  select(-Date)  
}
