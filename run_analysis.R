#download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "UIC HAR Dataset.zip")
#unzip("UIC HAR Dataset.zip")
setwd("./UCI HAR Dataset/")
options(stringsAsFactors = FALSE)
activity_labels = read.table("activity_labels.txt")
features = read.table("features.txt")

trainLabs = read.table("train/y_train.txt")
trainSubs = read.table("train/subject_train.txt")
trainData = read.table("train/X_train.txt")

testLabs = read.table("test/y_test.txt")
testSubs = read.table("test/subject_test.txt")
testData = read.table("test/X_test.txt")

Data = rbind(cbind(trainSubs, trainLabs, trainData), cbind(testSubs, testLabs, testData))

colnames(Data) = c("Subject", "Activity", features$V2)
Data = Data[ , c(1:2, grep("(mean|std)\\(\\)", features$V2)+2)]
Data$Activity = activity_labels$V2[Data$Activity]

tidyData = aggregate(Data[ , -(1:2)], by = list(Subject=Data$Subject, Activity=Data$Activity), FUN = mean, na.rm=TRUE)

write.table(tidyData, "tidyData.txt", row.names=FALSE)