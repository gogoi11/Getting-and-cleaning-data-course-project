#My script requires the dplyr package (1.0.0 or newer)
library(dplyr)
#Before running, set a new working directory.
setwd(getwd())
#Download, unzip data and set working directory:
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile = "samsungdata.zip")
unzip("samsungdata.zip")
setwd("UCI HAR Dataset")

#Read train data sets
train_subjects <- read.table(file.path("train","subject_train.txt"))
train_measurements <- read.table(file.path("train","X_train.txt"))
train_activities <- read.table(file.path("train","y_train.txt"))

#Read test data sets
test_subjects <- read.table(file.path("test","subject_test.txt"))
test_measurements <- read.table(file.path("test","X_test.txt"))
test_activities <- read.table(file.path("test", "y_test.txt"))

#Read activity labels
activities <- read.table("activity_labels.txt")
colnames(activities) <- c("activity ID","Activity")

#Read features
features <- read.table("features.txt")
colnames(features) <- c("features ID","features")

#Create and merge the test and train datasets.
test_data <- cbind(test_subjects,test_activities,test_measurements)
train_data <- cbind(train_subjects,train_activities,train_measurements)
full_data<-bind_rows(train_data,test_data)

#Name the measurement variables from the features.txt (column names).
colnames(full_data)<- c("subject","activity",features$features)

#Extract only the measurements on the mean and std for each measurement.
#I only extracted the "mean()" and "std()" measurements.
feats<-grep(pattern = "mean\\(\\)|std\\(\\)", x = features$features,
		value = T)
length(feats)
filtered_data<-select(full_data,c("subject","activity",feats))

#Give descriptive activity names to every activity.
filtered_data$activity <- factor(filtered_data$activity,
					   levels = activities$`activity ID`,
					   labels = activities$Activity)

#Appropriately label the data set with descriptive variable names
colnames <- colnames(filtered_data)
colnames <- gsub(pattern = "\\(\\)",replacement = "",x = colnames)
colnames <- gsub(pattern = "-", replacement = "", x = colnames)
colnames <- gsub(pattern = "^t", replacement = "TimeDomain", x = colnames)
colnames <- gsub(pattern = "^f", replacement = "FrequencyDomain", x = colnames)
colnames <- gsub(pattern = "Acc","Accelerometer",colnames)
colnames <- gsub("Gyro","Gyroscope",colnames)
colnames <- gsub("mean", "Mean",colnames)
colnames <- gsub("std","StandardDeviation",colnames)

colnames(filtered_data) <- colnames

#Create a second, independent tidy set with the 
#average of each variable for each activity and each subject

averaged_data <- group_by(filtered_data,subject,activity) %>%
			summarise(across(.cols = everything(),
					     .fns = mean),.groups = "keep")
write.table(averaged_data,"tidy_data.txt",row.names = F)

