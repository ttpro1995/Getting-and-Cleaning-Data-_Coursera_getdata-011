library(jsonlite)
jsonData<- fromJSON("religious.json")
names(jsonData)
names(jsonData$meta$view)
names(jsonData$meta$view$id)
jsonData$meta$view$id


data2 <- fromJSON("repo.json")
names(data2)
names(data2$owner)
data2$owner$login
