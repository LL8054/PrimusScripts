library(xlsx)
setwd("~/LL/Trading - GPC/Primus/Reference/Stock LIsts/PrimusScripts")
setwd("~/LL/Trading - GPC/Primus/Reference/Stock LIsts")
data = read.csv("NYSEComplete.csv")
setwd("~/LL/Trading - GPC/Primus/Reference/Stock LIsts/PrimusScripts")

data <- data[,c(1:2,7:8)]
data <- arrange(data, Sector, Industry)

data <- data[!grepl(".Pharmaceuticals|Gas|Coal|Health Insurance|Biotech.|Retail Stores|Real 
        Estate Investment Trusts|Coal|Bank.|Precious Metals|Real Estate|Homebuilding|Hotel.|Stores", data$Industry),]
data <- data[!grepl("PIMCO|Shipping|Gold|Restaurant|Restaurant.|S\\.A\\.|Chile|Brasil|N\\.V\\.|
                    S\\.A\\.B\\.|PLC|MLP|S\\.P\\.A\\.", data$Name),]


write.xlsx2(data, "NYSE.xlsx")