# Download a csv dataset

# create data directory if it doesn't already exist.
if (!dir.exists("data")) { 
    dir.create("data")
    }


csv_url<- "https://raw.githubusercontent.com/radne0/datasciencecoursera/main/cameras.csv"
xls_ <- "https://github.com/radne0/courses/blob/master/03_GettingData/01_06_readingExcelFiles/data/cameras.xlsx"

# download the data file.
download.file(url=f_url,destfile="data/cameras_data.csv",method="curl")
download.file(url=f_url,destfile="data/cameras_data.xls",method="curl")



cam_data <- read.table("data/cameras_data.csv",sep=',',header=TRUE)
# can use read.csv("data/camera_data.csv").  same as read.table,  but has the above defaults