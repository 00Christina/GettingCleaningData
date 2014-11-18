# Human Activity Recognition Using Smartphones Dataset (via UCI Machine Learning Repository)

## Description
The experiment, comprised of 30 volunteers between the ages of 19-48 years, was carried out with the intention of
measuring six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) with the use
of wearing the Samsung Galaxy S II on the waist. The smartphone's accelerometer and gyroscope were capable of
measuring "3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz." Among the volunteers,
about 70% were training subjects and 30% were test subjects.

## Data Set Information
For each record, the following was provided:
* Triaxial (XYZ) acceleration from the accelerometer and estimated body acceleration (including measurement in each of 
the three directions, including the mean and standard deviation of each, and time and frequency denoted as 't' and 'f'):
  * tBodyAcc-XYZ
  * tGravityAcc-XYZ
  * tBodyAccJerk-XYZ
  * tBodyAccMag
  * tGravityAccMag
  * tBodyAccJerkMag
  * fBodyAcc-XYZ
  * fBodyAccJerk-XYZ
  * fBodyAccMag
  * fBodyAccJerkMag
* Triaxial Angular velocity from the gyroscope (including measurement in each of the three directions, including the mean
and standard deviation of each, and time and frequency of each):
  * tBodyGyro-XYZ
  * tBodyGyroJerk-XYZ
  * tBodyGyroMag
  * tBodyGyroJerkMag
  * fBodyGyro-XYZ
  * fBodyGyroMag
  * fBodyGyroJerkMag
* Activity labels: walking, walking upstairs, walking downstairs, sitting, standing, laying
* Identifier for each subject in the experiment (1-30)

## Data Provided
The data for the experiment was initially housed in the following files (see zip file location at end):
* README.txt
* features_info.txt
* features.txt
* activity_labels.txt
* train/X_train.txt
* train/y_train.txt
* test/X_test.txt
* test/y_test.txt
* train/subject_train.txt
* test/subject_test.txt

Included in the zip file but not used in the script were the data in the "Inertial Signals" folders for both test
and train, respectively.

## Transformation
Taking and extracting from the zipped file at the end of this codebook, run_analysis.R merges the training and the test
sets to create one data set. It then extracts the measurements on the mean and standard deviation for each measurement.
Following that step, descriptive activity names are provided for the activities in the data set and appropriate labels
are given to the data set. Finally, the script creates a tidy data set containing only the mean of each variable for
each activity and corresponding subject, entitled "final.txt"

## Source
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Accessed via UCI Machine Learning Repository via Coursera:
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
