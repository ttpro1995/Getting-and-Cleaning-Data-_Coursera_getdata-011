+ Download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip in working directory

+ Read data set from file x_train.txt, x_test.txt and store them into x_train, x_test.
+Read activities label from file and store them into y_train, y_test

+ merge test set and train set by rbind(x_train,x_test) and store into merge_data

+Read features from file features.txt and store into features

+name merge_data with features

+Delete column with is not mean or standard deviation

+Read label from activity_labels.txt and store into activities_label 

+ merge test label and train label by rbind(x_train,x_test) and store into merge_label

+replace number in merge_label with string in activities_label 

+Read subject from file subject_train.txt and subject_test.txt then store into subject_train and subject_test

+Merge subject with rbind(subject_train,subject_test) , then store into merge_subject

+Bind Subject, Activities in same table with cbind(Subject,Activities) then store into tmp

+bind tmp with merge_data cbind(tmp, merge_data) then store back into merge_data

+make a copy of merge_data, rename it into extract_data.
This will be a data.frame contain mean and standard deviation for each measurement. 

+Print out extract_data into file extract_data.txt




 