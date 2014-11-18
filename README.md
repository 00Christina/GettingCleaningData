GettingCleaningData Course Project: Analyzing Data from Accelerometers in Samsung Galaxy S Smartphone
===================
This script sets about cleaning up various files associated with accelerometer data and combines them into one
cohesive and tidy table. First, all of the files are read into R and given specific column names for each table.
Then, the training and test sets are merged together, first by merging the 3 files associated with training and
second by the 3 files associated with testing, and finally merging the data of the training and testing together.
The measurements of mean and standard deviation are then found and extracted for each measurement, and then
matched to the variables in the merged train/test file. Those descriptive names for the variables are then subbed
out for more appropriate descriptive labels. Afterwards, the creation of a second tidy data set is initiated that
reports the mean of each measurement for each subject and corresponding activity.
