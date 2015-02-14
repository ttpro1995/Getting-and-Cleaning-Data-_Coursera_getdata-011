q4<-function(){
address<-url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlcode<-readLines(address)
htmlcode

char<-c(htmlcode[10],htmlcode[20],htmlcode[30],htmlcode[100])
answer<- nchar(char)
answer
}


#How many characters are in the 10th, 20th, 30th and 100th lines of HTML from this page: 
#45 31 7 25