---
title: "README"
author: "Tee Connie"
date: "September 26, 2015"
output: html_document
---

## Overview

------

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

The dataset used in this project is collected from a wearable computing research. Wearable computing is an emerging area. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

The raw data for the project is available at:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Following are the instructions for the project:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The last step is to produce a smaller data set which can be easily be uploaded to coursera for peer grading. The tidy data set is saved in a file called `tidy_data.txt`. 

## Files

-----

* `codebook.rmd`: Code book for the tidy data
* `run_analysis.R`: The R script that executes the instructions
* `tidy_data.txt`: The tidy data set (can be read into R using `read.table`)
* `UCI HAR Dataset.zip`: The raw data

## Program Description

----

The data set in the UCI HAR Dataset are separated into two types: training and testing. The training and testing data are stored in the `train` and `test` folders, respectively. In each of the `train` and `test` folders, there are three kinds of files: 

* `subject_{train, test}.txt`: contains information about the subject performing the activity. 
* `y_{train, test}.txt`: contains the label of the activity, e.g. 1 for Walking, 2 for Walking Upstairs, 3 for Walking Downstairs, etc. Description of this activity label is stored in a file called `activity_labels.txt'.
* `X_{train, test}.txt`: contains the actual measurements of each feature. 

In the program, we first load the data from these three types of files, i.e. subject information, activity label, and measurement into R. This procedure is performed under the `Step 1` section in `run_analysis.R`.


After that, we apply descriptive names for data set. We first rename the activities with meaningful names. The names of the activities are given in `activity_labels.txt`. We just replace the labels of the activity with the activity names, e.g. replace `1` with `WALKING`, `2` with `WALKING UPSTAIRS`, and so on. Besides, we also rename the columns of the measurement data set with meaningful names. The full name of each measurement is stored in ` features.txt`. We just rename the column of the measurement data set with the full name of the features, e.g. rename `V1` with `tBodyAcc-mean()-X`, rename `V2` with `tBodyAcc-mean()-Y`, and so on. The procedure for applying descriptive names for the data set is performed under the `Step 2` section in `run_analysis.R`.

Next, I extract measurements containing only the mean and standard deviation features from the data set. This is performed using the `grep` feature in which I find only the feature names containing the abbreviations `mean` and `std`. This procedure is performed under the Step 3 section in `run_analysis.R`.

Subsequent to this, I merge the pre-processed training and testing data sets into a combined data set. I first combine the training/testing subject, training/testing activity labels, and training/testing measurements to form the training/testing sets. This is done using the `cbind` function in R. I also rename the columns in the training/testing sets using appropriate names like `Subject` for the subject column, and `Activity` for the activity column. After that, I combine the training and testing data set into a big table. The combination of the training and testing data is performed using the `rbind` function in R. This procedure is performed under the Step 4 section in `run_analysis.R`.

Lastly, I create a summary of the dataset with the average of each variable for each activity and each subject using the `aggregate` function. After that the summarized data is stored in a file called `tidy_data.txt` using the ` write.table` function. 







