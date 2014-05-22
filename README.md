### Course Project Introduction

The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The project requires student to submit:
1) a tidy data set as described below. 
2) a link to a Github repository with your script for performing the analysis. 
3) a CodeBook.md file that describes the variables, the data, and any 
transformations or work performed to clean up. 
4) a README.md file that explains how all of the scripts work and how they are connected.  

### Source data set description
One of the most exciting areas in all of data science right now is wearable
computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the 
most advanced algorithms to attract new users. The data used in this project
represent data collected from the the embedded accelerometer and gyroscope
from the Samsung Galaxy S smartphone. A full description is available at the site
where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### R script "run_analysis.R" 

# This R scipt performs the following steps: 
* Merges the training and the test sets to create one data set.
* Extracts the measurement data (3-axial linear acceleration raw signals 
  from accelerometer and 3-axial angular velocity from gyroscope) on the mean 
  and standard deviation for each measurement. 
  (See code book for detailed measurement variable descriptions.)
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable 
  for each activity and each subject. 

# How to run R script "run_analysis.R"
* Download and unzip the data from link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* Place the downloaded data directory "UCI HAR Dataset" in R working directory.
* Run "run_analysis.R"
        source("run_analysis.R")
        run_analysis()
* The result of the tidy data set will be saved in "result.csv" file in R working directory.
