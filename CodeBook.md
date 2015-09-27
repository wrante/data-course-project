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


