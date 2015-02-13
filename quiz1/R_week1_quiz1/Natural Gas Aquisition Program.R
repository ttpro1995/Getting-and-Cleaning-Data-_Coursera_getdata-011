#Natural Gas Aquisition Program
library(xlsx)   #load library
row<-c(18:23)   #row 18-23
col<-c(7:15)    # column 7-15

gas.data<-read.xlsx("getdata-data-DATA.gov_NGAP.xlsx",sheetIndex=1, header=TRUE) #read it, store to gas.data
dat<-read.xlsx("getdata-data-DATA.gov_NGAP.xlsx",sheetIndex=1 ,colIndex=col,rowIndex=row,header=TRUE) #read it, store to dat

sum(dat$Zip*dat$Ext,na.rm=T) #execute this code as quiz ask us to do
#36534720

#Question 3 answer 36534720