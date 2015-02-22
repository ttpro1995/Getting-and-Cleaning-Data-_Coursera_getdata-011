#Thai THien
#Peer Assessments
#Getting and Cleaning Data 
#getdata-011

# Merges the training and the test sets to create one data set.

x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")



x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")


features<-read.table("UCI HAR Dataset/features.txt")

dim(x_train)          #7352  561 
dim(y_train)          #7352    1
dim(subject_train)    #7352    1
dim(x_test)           #2947  561
dim(y_test)           #2947    1
dim(subject_test)     #2947    1


dim(features)         #561   2
features<-as.vector(features[[2]])   #turn feature dataframe into vector
length(features)   #561


merge_data<-rbind(x_train,x_test)    #merge train set into test set  
names(merge_data)<-features          #name it column

MeanStd <- grep("mean\\(\\)|std\\(\\)", features)
#vector contain index of column have mean std in it name 

#extract_data<-merge_data[,MeanStd]   #only mean and std
merge_data<-merge_data[,MeanStd] 

#Match y with its label
activities_label<-read.table("UCI HAR Dataset/activity_labels.txt")
activities_label<-as.vector(activities_label[[2]])
merge_label<-rbind(y_train,y_test)  #merge train label and test label
tmp<-merge_label
tmp<-as.vector(merge_label[[1]])
merge_label<-as.character(tmp)
for (i in 1:length(tmp))
{
  merge_label<-activities_label[tmp] #replace number with string label
}

#merge subject
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
merge_subject<-rbind(subject_train,subject_test)
merge_subject<-as.vector(merge_subject[[1]])
Subject<-merge_subject   #change name 
Activities <- merge_label #change name 
tmp<-cbind(Subject,Activities)  # first two row
tmp<-cbind(tmp, merge_data)
merge_data<-tmp    


extract_data<-merge_data

write.table(extract_data,file="extract_data.txt",row.names=FALSE) #output extract_data
#Extracts_data cointain only the measurements on the mean and standard deviation for each measurement.


##second data

subjectLen <- length(table(merge_subject)) # 30
activityLen <- length(activities_label) # 6
columnLen <- dim(extract_data)[2]       #68

result <- matrix(NA, nrow=subjectLen*activityLen, ncol=columnLen) 
result <- as.data.frame(result)
colnames(result) <- colnames(extract_data)
row <- 1


merge_subject<-rbind(subject_train,subject_test)  

for(i in 1:subjectLen) {
  for(j in 1:activityLen) {
    result[row, 1] <- sort(unique(merge_subject)[, 1])[i]
    result[row, 2] <- activities_label[j]
    bool1 <- i == extract_data$Subject
    bool2 <- activities_label[j] == extract_data$Activities 
    result[row, 3:columnLen] <- colMeans(extract_data[bool1&bool2, 3:columnLen])
    row <- row + 1
  }
}



