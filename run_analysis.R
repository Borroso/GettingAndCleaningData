#!/usr/local/bin/Rscript

# changes work directory to current folder
setwd(getSrcDirectory(function(x) {x}))

# adds helpers functions
source("./_helpers/index.R")

# imports necessary packages if not present
check.and.install.packages(c("reshape2"))
library(reshape2)


# downloads row data
download.and.extract.zip("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")


## Reads data

# reads features and activities
activities      <- read.table('./_row_data/UCI HAR Dataset/activity_labels.txt')
features        <- read.table('./_row_data/UCI HAR Dataset/features.txt')

# reads trainings data tables
subject_train   <- read.table("./_row_data/UCI HAR Dataset/train/subject_train.txt")
y_train         <- read.table("./_row_data/UCI HAR Dataset/train/y_train.txt")
x_train         <- read.table("./_row_data/UCI HAR Dataset/train/X_train.txt")

# reads test data tables
subject_test    <- read.table("./_row_data/UCI HAR Dataset/test/subject_test.txt")
y_test          <- read.table("./_row_data/UCI HAR Dataset/test/y_test.txt")
x_test          <- read.table("./_row_data/UCI HAR Dataset/test/X_test.txt")


## Cleans data

# selects columns we want. Extracts only the measurements on the mean and standard deviation for each measurement
colWanted           <- grep(".*mean.*|.*std.*", features[,2])

# cleans x_train and x_test datasets using only the colums we want
x_train             <- x_train[, colWanted]
x_test              <- x_test[, colWanted]

# merges the training and the test sets to create one data set
test                <- cbind(subject_test, y_test, x_test)
train               <- cbind(subject_train, y_train, x_train)
completeData        <- rbind(train, test)

# simplifies and changes column names to make them more descriptive and applies them to new data set
colWanted.names     <- features[colWanted, 2]
colWanted.names     <- gsub('[()]', '', colWanted.names)
colWanted.names     <- gsub('-', '_', colWanted.names)
colWanted.names     <- gsub("^t", "time", colWanted.names)
colWanted.names     <- gsub("^f", "frequency", colWanted.names)
colWanted.names     <- gsub("Acc", "Accelerometer", colWanted.names)
colWanted.names     <- gsub("Gyro", "Gyroscope", colWanted.names)
colWanted.names     <- gsub("Mag", "Magnitude", colWanted.names)
colWanted.names     <- gsub("BodyBody", "Body", colWanted.names)
names(completeData) <- c("subject", "activity", colWanted.names)

# replaces activity number reference with the appropiate activity name
completeData$activity <- factor(completeData$activity, levels = activities[,1], labels = activities[,2])

# creates a second and independent tidy data set with the average of each variable for each activity and each subject
tidyData            <- melt(completeData, id = c("subject", "activity"))
tidyData            <- dcast(tidyData, subject + activity ~ variable, mean)

print(str(tidyData))
# Saves data

# saves tidy data into a new file at the working space root
if (!file.exists("_output_data")) {
  dir.create("_output_data")
}
write.csv(tidyData, "./_output_data/tidyData.csv")














##
