library(tidyverse)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

download.file(url=url,dest="data.csv",method="curl")

my_data <- read.csv('data.csv')

my_data %>% filter(VAL >= 24) %>% select(VAL)

url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(url=url,dest="excel.xlsx",method="curl")
dat <- read.xlsx('excel.xlsx',sheetIndex=1,rowIndex=18:23,colIndex = 7:15)
sum(dat$Zip*dat$Ext,na.rm=T)

url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
download.file(url=url,dest="rest.xml",method="curl")
xmldata<- xmlParse('rest.xml')
zips<-xpathSApply(xmldata,"//zipcode",xmlValue)
zips <- as.numeric(zips)
length(zips[zips == 21231])

url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(url=url,dest="freadfile.csv",method="curl")





       