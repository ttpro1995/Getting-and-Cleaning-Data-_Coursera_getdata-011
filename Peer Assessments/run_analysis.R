# Merges the training and the test sets to create one data set.

x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
subject_test<-read.table("UCI HAR Dataset/train/subject_train.txt")


x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")

features<-read.table("UCI HAR Dataset/features.txt")

dim(x_train)          #7352  561 
dim(y_train)          #7352    1
dim(subject_train)    #7352    1
dim(x_test)           #2947  561
dim(y_test)           #2947    1
dim(subject_test)     #2947    1


dim(features)         #561   2
feature<-as.vector(features[[2]])   #turn feature dataframe into vector
length(feature)   #561
