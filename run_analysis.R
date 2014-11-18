## Read files into R
sub_train = read.table("./train/subject_train.txt", col.names=c("subject_id"))
X_train = read.table("./train/X_train.txt")
y_train = read.table("./train/y_train.txt", col.names=c("activity_id"))
sub_test = read.table("./test/subject_test.txt", col.names=c("subject_id"))
X_test = read.table("./test/X_test.txt")
y_test = read.table("./test/y_test.txt", col.names=c("subject_id"))
features = read.table("./features.txt", col.names=c("feature_id", "feature_label"))
activity_labels = read.table("./activity_labels.txt", col.names=c("activity_id", "activity_label"),)

## Merges the training and the test sets to create one data set
sub_train$ID <- as.numeric(rownames(sub_train))
X_train$ID <- as.numeric(rownames(X_train))
y_train$ID <- as.numeric(rownames(y_train))
train <- merge(sub_train, y_train, all=TRUE)
train <- merge(train, X_train, all=TRUE)

sub_test$ID <- as.numeric(rownames(sub_test))
X_test$ID <- as.numeric(rownames(X_test))
y_test$ID <- as.numeric(rownames(y_test))
test <- merge(sub_test, y_test, all=TRUE)
test <- merge(test, X_test, all=TRUE)

mergedData <- merge(train, test, all=TRUE)

## Extracts only the measurements on the mean and standard deviation for each measurement
spec_features <- features[grepl("mean\\(\\)", features$feature_label) | grepl("std\\(\\)", features$feature_label),]

## Uses descriptive activity names to name the activities in the data set
mergedData2 <- mergedData[, c(c(1,2,3), spec_features$feature_id + 3)]
mergedData3 = merge(mergedData2, activity_labels)

## Appropriately label the data set with descriptive variable names
spec_features$feature_label = gsub("\\(\\)", "", spec_features$feature_label)
spec_features$feature_label = gsub("-",".", spec_features$feature_label)
for (i in 1:length(spec_features$feature_label)) {colnames(mergedData3)[i+3] <- spec_features$feature_label[i]}

## From the data set in step 4, creates a second, independent tidy data set with the average
## of each variable for each activity and each subject
tidy <- c("ID","activity_label")
mergedData4 <- mergedData3[,!(names(mergedData3) %in% tidy)]
total_tidy <- aggregate(x=mergedData4, by=list(subject=mergedData4$subject_id, activity=mergedData4$activity_id), mean)
tidy <- c("subject", "activity")
total_tidy <- total_tidy[,!(names(total_tidy) %in% tidy)]
total_tidy = merge(total_tidy, activity_labels)

## Write a .txt file created with write.table() using row.name=FALSE
write.table(file="final.txt", x=total_tidy, row.name=FALSE)
