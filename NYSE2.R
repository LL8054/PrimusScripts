#takes only names with "Fund", "Trust", or "Income" in them. Excludes "Pimco"

library(xlsx)
library(dplyr)
setwd("~/LL/Trading - GPC/Primus/Reference/Stock LIsts/PrimusScripts")
setwd("~/LL/Trading - GPC/Primus/Reference/Stock LIsts")
data = read.csv("NYSEComplete.csv")
setwd("~/LL/Trading - GPC/Primus/Reference/Stock LIsts/PrimusScripts")

data <- data[,c(1:2,7:8)]
data <- arrange(data, Sector, Industry)

data <- data[grepl("Fund|Trust|Income", data$Name),]
data <- data[!grepl("[Pp][Ii][Mm][Cc][Oo]", data$Name),]
data <- data[!grepl("\\^", data$Symbol),]


write.xlsx2(data, "NYSE2.xlsx", row.names=FALSE)