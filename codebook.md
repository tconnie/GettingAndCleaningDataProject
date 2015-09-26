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

![output 1](output1.jpg)


### Sitting activity

```{r,echo=FALSE}
# This block is hidden because it's ugly - generate a data set
tidy_data <- read.table("tidy_data.txt")
tidy_data[50:55,1:4]
```

### Standing activity
```{r,echo=FALSE}
# This block is hidden because it's ugly - generate a data set
tidy_data <- read.table("tidy_data.txt")
tidy_data[80:85,1:4]
```

### Walking activity
```{r,echo=FALSE}
# This block is hidden because it's ugly - generate a data set
tidy_data <- read.table("tidy_data.txt")
tidy_data[100:105,1:4]
```

### Walking downstair
```{r,echo=FALSE}
# This block is hidden because it's ugly - generate a data set
tidy_data <- read.table("tidy_data.txt")
tidy_data[145:150,1:4]
```

### Walking upstair
```{r,echo=FALSE}
# This block is hidden because it's ugly - generate a data set
tidy_data <- read.table("tidy_data.txt")
tidy_data[155:160,1:4]
```

