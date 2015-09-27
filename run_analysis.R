## 1. Merge the training and test sets to create one data set
## Combine test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
test_data <- cbind(subject_test, y_test, X_test)

## Combine train data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
train_data <- cbind(subject_train, y_train, X_train)

## Combine train and test data
data <- rbind(test_data, train_data)

## 2. Extract only the measurments on the mean and standard deviation for each
## measurement

## Add column names to data
features <- read.table("UCI HAR Dataset/features.txt")
names(data) <- c("Subject", "Activity", as.character(features[,2]))

## Subset for columns which contain "mean()" or "std()"
columns <- c(1,2,grep("mean\\(\\)|std\\(\\)", names(data), ignore.case = TRUE))
data <- data[,columns]

## 3. Use descriptive activity names to name the activities in the data set

## Change the levels to appropriate descriptive label
data$Activity <- as.factor(data$Activity)
levels(data$Activity) <- c("Walking", "Walking Upstairs", "Walking Downstairs", 
                           "Sitting", "Standing", "Laying")

## 4. Appropriately label the data set with descriptive variable names

names(data) <- gsub("\\(\\)", "", names(data))
names(data) <- gsub("-", ".", names(data))
names(data) <- gsub("^t", "time", names(data))
names(data) <- gsub("^f", "freq", names(data))

## 5. Create a second, independent tidy data set with the average of each
## variable for each activity and each subject

library(dplyr)
tidy <- tbl_df(data)
tidy <- group_by(tidy, Subject, Activity)
tidy <- summarize_each(groups, funs(mean))