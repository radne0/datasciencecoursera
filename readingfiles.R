library(xlsx)  #<- needed to read in xls files

# Download a csv dataset

# create data directory if it doesn't already exist.
if (!dir.exists("data")) { 
    dir.create("data")
    }


csv_url<- "https://raw.githubusercontent.com/radne0/courses/master/03_GettingData/01_05_readingLocalFiles/data/cameras.csv"

# download the data files.
download.file(url=f_url,destfile="data/cameras_data.csv",method="curl")

#cam_data <- read.table("data/cameras_data.csv",sep=',',header=TRUE)
cam_data_cs <- read.csv("data/cameras_data.csv")    # just read.table with those as default args
cam_data_xl <- read.xlsx("data/cameras_data.xlsx",sheetIndex=1,headers=TRUE)





