library(xlsx)  #<- needed to read in xls files
library(XML)
library(jsonlite)

# Download a csv dataset

# create data directory if it doesn't already exist.
if (!dir.exists("data")) { 
    dir.create("data")
    }


csv_url<- "https://raw.githubusercontent.com/radne0/courses/master/03_GettingData/01_05_readingLocalFiles/data/cameras.csv"


# download the data files.
download.file(url=csv_url,destfile="data/cameras_data.csv",method="curl")
download.file(url=xml_url,destfile="data/test.xml", method="curl")

#cam_data <- read.table("data/cameras_data.csv",sep=',',header=TRUE)
cam_data_cs <- read.csv("data/cameras_data.csv")    # just read.table with those as default args
cam_data_xl <- read.xlsx("data/cameras_data.xlsx",sheetIndex=1,headers=TRUE)


xml_data <- xmlTreeParse("data/test.xml",useInternal=TRUE)
rootNode <- xmlRoot(xml_data)
xmlName(rootNode)   #<- breakfast menu
names(rootNode)     # has 5 food items.

for (i in 1:5) { 
    print(rootNode[[i]])
}


n<-xpathSApply(rootNode,"//name",xmlValue)     #print out name tags contained with in root node.
print(n)
class(n)
p<-xpathSApply(rootNode,"//price",xmlValue)
print(p)
class(p)
p<- as.numeric(gsub("\\$","",p))   # remove $ sign and convert to numeric.
print(p)
p_df <- data.frame(Name=n,Price=p)

jsonData <- fromJSON("https://api.github.com/users/radne0/repos")




