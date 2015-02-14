#question 5
q5<-function(){
  #Read this data set into R and report the sum of the numbers in the fourth of the nine columns.
  w<-c(-1,9,-5,4,4,-5,4,4,-5,4,4,-5,4,4) # minus is space, no minus is data
data<-read.fwf("q5data.for",widths=w,skip=4)#skip 4 line from the beginning

#4th number of every column 
v<-c(data[,4]) #row 4, all column
answer<- sum(v)
answer
}#32426.7