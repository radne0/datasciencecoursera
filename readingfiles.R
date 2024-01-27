# Download a csv dataset

if (!dir.exists("data")) { 
    dir.create("data")
    }


f_url<- "https://raw.githubusercontent.com/radne0/datasciencecoursera/main/Fixed_Speed_Cameras.csv"
download.file(url=f_url,destfile="data/cameras.csv",method="curl")