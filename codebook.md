---
title: "Code Book"
author: "Tee Connie"
date: "September 26, 2015"
output: html_document
---


## Introduction

-------

This is the codebook for `tidy_data.txt`. The dataset is a tidy data, i.e. each variable is stored in one column.

The description of each variable is provided in this document. 

Refer `README.md` for details how the dataset is generated.

## Variable Names Description  

-------

* `Subject`: The subject detail. There are 30 subjects in the dataset
* `Activity`: Activity description. There are 6 activities in the dataset, i.e. Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying
* `t`: Time domain signal
* `f`: Frequency domain signal (obtained by applying Fast Fourier Transform on the time domain signal)
* `-XYZ`: 3-axial signals in the X, Y and Z directions
* `BodyAcc`: Body acceleration
* `gravityAcc`: Gravitational accelaration
* `bodyGyro`: Body gyro
* `jerk`: Jerk signal
* `mean()`: Mean of the specific measurement
* `std()`: Standard deviation of the specific measurement
* `Mag`: Total magnitude across all three axes
* `count`: Count of data points used to compute `average`

## Examples of variable name interpretation

-----

1. `tBodyAcc-mean()-X`: Mean of body accelaration in the X direction in the time domain.
2. `tBodyAcc-std()-Y`: Standard deviation of body accelaration in the Y direction in the time domain.
3. `fBodyAccJerk-mean()-Z`: Mean of jerk signal of body accelaration in the Z direction in the frequency domain.


## Snapshot of a few rows and columns of dataset

-----

### Laying activity

![output 1](https://github.com/tconnie/GettingAndCleaningDataProject/blob/master/output_1.jpg)


### Sitting activity

![output 2](https://github.com/tconnie/GettingAndCleaningDataProject/blob/master/output_2.jpg)


### Standing activity

![output 3](https://github.com/tconnie/GettingAndCleaningDataProject/blob/master/output_3.jpg)


### Walking activity

![output 4](https://github.com/tconnie/GettingAndCleaningDataProject/blob/master/output_4.jpg)


### Walking downstair

![output 5](https://github.com/tconnie/GettingAndCleaningDataProject/blob/master/output_5.jpg)


### Walking upstair

![output 6](https://github.com/tconnie/GettingAndCleaningDataProject/blob/master/output_6.jpg)

