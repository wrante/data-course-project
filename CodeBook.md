# CodeBook

A description of the project and experiments can be found in the 'README.md' file.

## Steps for Cleaning Data

* Combine columns of data from 'subject_test.txt', 'X_test.txt', 'y_test.txt'. Do the same for the 'train' data
* Combine new test and train sets by row binding
* Set the column names by using the list of variables in the 'features.txt' file
* Extract only the measurments on mean and standard deviation for each measurement
* Change the Activity numbers to their appropriate descriptive labels from the 'activity_labels.txt' file
* Label the data set with descriptive variable names
* Create a tidy data set by grouping by Subject and Activity and summarizing with the average of each variable

## Variables

##### Subject
ID of the subject who performed the activity. Range is from 1 to 30

##### Activity
Description of the activity performed. Possible activities:
* Walking
* Walking Upstairs
* Walking Downstairs
* Sitting
* Standing
* Laying

##### Measurements
The following variables were all measured with the accelerometer or gyroscope. The accelerometer measurements which contain 'Acc' in the variable name are in standard gravity units 'g'. The gyroscope measurements which contain 'Gyro' in the variable name are in units of radians/second. Each cell represents the average measurement for the given subject and activity.

timeBodyAcc.mean.X

timeBodyAcc.mean.Y

timeBodyAcc.mean.Z

timeBodyAcc.std.X
timeBodyAcc.std.Y
timeBodyAcc.std.Z
timeGravityAcc.mean.X
timeGravityAcc.mean.Y
timeGravityAcc.mean.Z
timeGravityAcc.std.X
timeGravityAcc.std.Y
timeGravityAcc.std.Z
timeBodyAccJerk.mean.X
timeBodyAccJerk.mean.Y
timeBodyAccJerk.mean.Z
timeBodyAccJerk.std.X
timeBodyAccJerk.std.Y
timeBodyAccJerk.std.Z
timeBodyGyro.mean.X
timeBodyGyro.mean.Y
timeBodyGyro.mean.Z
timeBodyGyro.std.X
timeBodyGyro.std.Y
timeBodyGyro.std.Z
timeBodyGyroJerk.mean.X
timeBodyGyroJerk.mean.Y
timeBodyGyroJerk.mean.Z
timeBodyGyroJerk.std.X
timeBodyGyroJerk.std.Y
timeBodyGyroJerk.std.Z
timeBodyAccMag.mean
timeBodyAccMag.std
timeGravityAccMag.mean
timeGravityAccMag.std
timeBodyAccJerkMag.mean
timeBodyAccJerkMag.std
timeBodyGyroMag.mean
timeBodyGyroMag.std
timeBodyGyroJerkMag.mean
timeBodyGyroJerkMag.std
freqBodyAcc.mean.X
freqBodyAcc.mean.Y
freqBodyAcc.mean.Z
freqBodyAcc.std.X
freqBodyAcc.std.Y
freqBodyAcc.std.Z
freqBodyAccJerk.mean.X
freqBodyAccJerk.mean.Y
freqBodyAccJerk.mean.Z
freqBodyAccJerk.std.X
freqBodyAccJerk.std.Y
freqBodyAccJerk.std.Z
freqBodyGyro.mean.X
freqBodyGyro.mean.Y
freqBodyGyro.mean.Z
freqBodyGyro.std.X
freqBodyGyro.std.Y
freqBodyGyro.std.Z
freqBodyAccMag.mean
freqBodyAccMag.std
freqBodyBodyAccJerkMag.mean
freqBodyBodyAccJerkMag.std
freqBodyBodyGyroMag.mean
freqBodyBodyGyroMag.std
freqBodyBodyGyroJerkMag.mean
freqBodyBodyGyroJerkMag.std

