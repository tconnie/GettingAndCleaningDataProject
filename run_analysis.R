### Getting and Cleaning Data - John Hopkins University
### Course Project 1
### Tidying a raw dataset

#-----------------------------------------------------------------------
# Preliminary: Download and unzip raw data file
#-----------------------------------------------------------------------
source_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(source_URL, "UCI HAR Dataset.zip", quiet = TRUE)
unzip("UCI HAR Dataset.zip")

#-----------------------------------------------------------------------
# Step 1: Preparing the training and testing set
#-----------------------------------------------------------------------
# Load the subject information, label, and data from the training set
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_label <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")

# Load the subject information, label, and data from the testing set
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_label <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")


#-----------------------------------------------------------------------
# Step 2: Apply descriptive names for activities and column names
#-----------------------------------------------------------------------
# Rename activities with meaningful names
activity_label <- read.table("./UCI HAR Dataset/activity_labels.txt") 
train_label$V1 <- activity_label[match(train_label$V1,activity_label$V1), 2]
test_label$V1 <- activity_label[match(test_label$V1,activity_label$V1), 2]

# Rename columns with meaningful names
feature_name <- read.table("./UCI HAR Dataset/features.txt")
names(train_data) <- feature_name$V2
names(test_data) <- feature_name$V2


#-----------------------------------------------------------------------
# Step 3: Extract only the measurements on the mean and standard deviation 
#-----------------------------------------------------------------------
# Find the indexes of mean and standard deviation from the feature description list
idx_mean <- grep("mean",feature_name$V2)
idx_std <- grep("std",feature_name$V2)

# Extract only the mean and standard deviation columns from the training set
train_mean <- train_data[,idx_mean]
train_std <- train_data[,idx_std]
train_data <- cbind(train_mean, train_std)

# Extract only the mean and standard deviation columns from the testing set
test_mean <- test_data[,idx_mean]
test_std <- test_data[,idx_std]
test_data <- cbind(test_mean, test_std)


#-----------------------------------------------------------------------
# Step 4: Combine the training and testing set into one dataset
#-----------------------------------------------------------------------
# Combine subject, activity, and measurement into the train dataset
train_data <- cbind(train_subject, train_label, train_data)
# Rename the column names of subject and activity to have a more meaning names
colnames(train_data)[1:2] <- c("Subject", "Activity")

# Combine subject, activity, and measurement into the test dataset
test_data <- cbind(test_subject, test_label, test_data)
# Rename the column names of subject and activity to have a more meaning names
colnames(test_data)[1:2] <- c("Subject", "Activity")

# Merge the train and test datasets together
comb_data <- rbind(train_data, test_data)


#-----------------------------------------------------------------------
# Step 5: Create a summary of the dataset with the average of each variable for 
# each activity and each subject
#-----------------------------------------------------------------------
# Summarize dataset by finding the mean of each variable for each activity and each subject
summarized_data <- aggregate(comb_data[,-(1:2)], by=list("Subject"=comb_data$Subject, "Activity"=comb_data$Activity), mean)
# Writing the data into a text file
write.table(summarized_data, file = "tidy_data.txt", row.names = FALSE)





