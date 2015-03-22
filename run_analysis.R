## This script performs the analysis with data downloaded from: 
##  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## 
## It merges the training and test datasets, extracts the mean and standard deviation 
## of each measurement and produces an average of each measurement for each activity 
## and each subject.
##
## Refer to README how this script works.
## Refer to CodeBook for explanation of the variables, the data, and any transformations
## performed to clean up the data.


## Load the required library
library(dplyr)

## 0. Read all the datasets 

## ... read test datasets
xtest= read.table(".\\UCI HAR Dataset\\test\\X_test.txt", sep="", header=FALSE)
ytest = read.table(".\\UCI HAR Dataset\\test\\Y_test.txt", sep="", header=FALSE)
subj_test = read.table(".\\UCI HAR Dataset\\test\\subject_test.txt", sep="", header=FALSE)

## ... read train datasets
xtrain = read.table(".\\UCI HAR Dataset\\train\\X_train.txt", sep="", header=FALSE)
ytrain = read.table(".\\UCI HAR Dataset\\train\\Y_train.txt", sep="", header=FALSE)
subj_train = read.table(".\\UCI HAR Dataset\\train\\subject_train.txt", sep="", header=FALSE)

## ... read labels datasets
activity_label = read.table(".\\UCI HAR Dataset\\activity_labels.txt",sep="", header=FALSE)
features = read.table(".\\UCI HAR Dataset\\features.txt",sep="", header=FALSE)


## 1. Merge the training and the test sets to create one datasets

## ... merge the training and test sets for measurement, activity, subject
measurement <- rbind(xtrain, xtest)
activity <- rbind(ytrain, ytest)
subject <- rbind(subj_train, subj_test)

## ... name the columns for easy reference
colnames(activity) <- c("ActivityCode")
colnames(subject) <- c("Subject")
colnames(measurement) <- features[,2]
colnames(activity_label) <- c("ActivityCode", "Activity")

## ... merge all the datasets
mergedata <- cbind(subject, activity, measurement)


## 2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement

## ... extract subject, activity and meansurements with the column names "mean()" and "std()"
mergedata <- mergedata[, c(1, 2, grep("mean\\()|std\\()", colnames(mergedata)))]


## 3. Uses descriptive activity names to name the activities in the dataset

## ... merge with the activity_label to get the name of activities and 
## ... remove the column contains activity codes 1 to 6
mergedata <- merge(activity_label, mergedata, by.x="ActivityCode", by.y="ActivityCode", all=TRUE)
mergedata <- select(mergedata, -ActivityCode)

## 4. Appropriately labels the data set with descriptive variable names.

# ... rename part of the column names to be more descriptive
colnames(mergedata) <- sub("tBody", "TimeBody", colnames(mergedata))
colnames(mergedata) <- sub("tGravity", "TimeGravity", colnames(mergedata))
colnames(mergedata) <- sub("fBody", "FftBody", colnames(mergedata))
colnames(mergedata) <- sub("fGravity", "FftGravity", colnames(mergedata))
colnames(mergedata) <- sub("-mean\\()", "Mean", colnames(mergedata))
colnames(mergedata) <- sub("-std\\()", "StdDev", colnames(mergedata))

## 5. Creates a second independent tidy dataset with the average of 
##    each variable for each activity and each subject.
mergedata_summary <- group_by(mergedata, Subject, Activity)
mergedata_summary <- summarise_each(mergedata_summary, funs(mean))

## write the summary to the text file
write.table(mergedata_summary, file="output.txt", sep=" ", row.names=FALSE)
