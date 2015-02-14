ttpro<-fromJSON("ttpro1995repo.json")

hdviet<-subset(ttpro,name=="HDvietWatchlist")  # phim

# counting R
r<-subset(ttpro,language=="R")

# java
Java<-subset(ttpro,language=="Java")

#C++
Cplusplus<-subset(ttpro,language=="C++")

#C
c<-subset(ttpro,language=="C")

#other
other<-subset(ttpro,(language!="C++"&language!="Java"&language!="C"&language!="R"))