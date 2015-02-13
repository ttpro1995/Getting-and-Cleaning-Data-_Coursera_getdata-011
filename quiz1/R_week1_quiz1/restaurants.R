#covert the xml to csv by http://www.luxonsoftware.com/converter/xmltocsv  
#it output a zip with 2 file
#location_1.csv
#row.csv
data.r<-read.csv("row.csv") # read this first, one of 2 file we got after covert
data.l<-read.csv("location_1.csv") # read this first, one of 2 file we got after covert


#find 21231
data.zip21231<-subset(data.r,zipcode==21231)  # data.zip21231 have 107 obs

#How many restaurants have zipcode 21231?
#answer 107 
# but no 107 in answer , this is not working
#####################################################
# go to https://data.baltimorecity.gov/Culture-Arts/Restaurants/k5ry-ef3g/1
#export as csv
# read csv
restaurant.data<-read.csv("Restaurants.csv")
restaurant.data.zip21231<-subset(data.r,zipcode==21231) #wow, 107 again, something wrong here
############################# #i wonder something wrong
#another ways
#open xml file provide by coursera course (not from internet)
#open it with notepad++
#find 21231
#127 count :)
#So, answer is 127


