### Course Project Code Book - Samsung measurement summary data

### Source data
The source data set for Samsung measurement summary data set is from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The full description of the source data is available at site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### How was Samsung measurement summary data set created 
The Samsung measurement summary data set can be created by running R scipt
"run_analysis.R". This R script performs the following steps:
* Merges the training and the test sets to create one data set.
* Extracts the measurement data (3-axial linear acceleration raw signals from accelerometer and 3-axial angular
velocity from gyroscope) on the mean and standard deviation for each measurement. (See code book for detailed
measurement variable descriptions.)
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

See README.md for details on how to run "run_analysis.R".

### Samsung measurement summary data set description
Samsung measurement summary data set contains 20 variables and 180 observations.
Each observation represents mean and standard deviation of measured variables 
for each subject and each activity.

### Variable Description
 * subject: col1, ID of the subject who performed the activities. Range is from 1 to 30
 
 * activities: col2, Label of 1 of 6 activities performed by the subjects
 
 * tBodyAccmeanX, Y, Z: col3-5, mean of X, Y, Z body acceleration from the accelerometer
        
 * tBodyAccstdX, Y, Z: col6-8, standard deviation of X, Y, Z body acceleration from the accelerometer
 
 * tGravityAccmeanX, Y, Z: col9-11, mean of X, Y, Z gravity acceleration from the accelerometer
 
 * tGravityAccstdX, Y, Z: col12-14, standard deviation of X, Y, Z gravity acceleration from the accelerometer
 
 * tBodyGyromeanX,Y,Z: col15-17, mean of X, Y, Z Angular velocity from the gyroscope
 
 * tBodyGyrostdX,Y,Z: col18-20, standard deviation of X, Y, Z Angular velocity from the gyroscope
