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
From the 'features_info.txt' file:
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

Only the features which contained measurements on the mean and standard deviation were selected for this analysis. The 't' and 'f' have been replaced with 'time' and 'freq' respectively. Measurements from the accelerometer are measured in standard gravity units 'g'. Measurements from the gyroscope are in units of radians/second. Each cell contains the average of each measurment for the subject and activity.

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
