#read XML
data<-xmlTreeParse("Parks.xml")
rootNode<-xmlRoot(data) #root node
one<-rootNode[[1]]         #root node
fram<- xmlToDataFrame("Parks.xml",c("character","character","numeric","character"))

#still didn't work.
#it harder than i thought
#catch it later.
#bye
