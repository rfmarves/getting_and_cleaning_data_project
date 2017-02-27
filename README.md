---
title: "Getting and Cleaning Data Project"
author: "Rene Marves"
date: "26 de febrero de 2017"
output: html_document
---



## Description

The following explains how the project data is cleaned up, with step by step code.  The Codebook is found in the codebook.md file.

The source data comes from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The actual data package comes from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Setting up

Loads the required packages and identifies working directory:


```r
library(dplyr)
library(data.table)
path <- getwd()
dataPath <- file.path(path, "UCI HAR Dataset")
```

## Reads source files

The Source files are now read into data tables, merging the Train and Test data simulteneously and cleaning the variables to save memory space. Column labels are also applied.

First the Subject tables:


```r
dtSubjectTrain <- data.table(read.table(file.path(dataPath, "train", "subject_train.txt")))
dtSubjectTest <- data.table(read.table(file.path(dataPath, "test", "subject_test.txt")))
dtSubject <- rbind(dtSubjectTrain, dtSubjectTest)
names(dtSubject) <- c("Subject")
rm(dtSubjectTrain,dtSubjectTest)
```

Then the Activity tables:


```r
dtActivityTrain <- data.table(read.table(file.path(dataPath, "train","Y_train.txt")))
dtActivityTest <- data.table(read.table(file.path(dataPath, "test","Y_test.txt")))
dtActivity <- rbind(dtActivityTrain,dtActivityTest)
names(dtActivity) <- c("ActivityNumber")
rm(dtActivityTrain,dtActivityTest)
```

Now the tables with the data itself:


```r
dtTrain <- data.table(read.table(file.path(dataPath, "train","X_train.txt")))
dtTest <- data.table(read.table(file.path(dataPath, "test","X_test.txt")))
dt <- rbind(dtTrain,dtTest)
rm(dtTrain,dtTest)
```

Now reading the activity names:


```r
dtActivityNames <- data.table(read.table(file.path(dataPath, "activity_labels.txt"))) 
names(dtActivityNames) <- c("ActivityNumber","ActivityName")
```

Finally, get the Feature Names from the file and add a code column to reference to columnn names:


```r
dtFeatureID <- data.table(read.table(file.path(dataPath, "features.txt"))) 
names(dtFeatureID) <- c("ftNum","ftName")
dtFeatureID$ftCode <- paste("V", dtFeatureID$ftNum, sep = "")
```

## Merging data

Now, all the previous data tables are merged into 1 and extra tables are removed:


```r
dt <- cbind(dtSubject, dtActivity, dt)
rm(dtSubject, dtActivity)
```

## Adding activity names

All activities need to be named, so an AcvtivityName column is added:


```r
dt <- merge(dt,dtActivityNames, by="ActivityNumber")
```


## Filtering data

Now, to leave only the columns that are average (mean) or standard deviation and also cleaning up column names:


```r
targetCols <- dtFeatureID[grepl("mean\\(\\)|std\\(\\)",ftName)]
targetColsCode <- c("Subject", "ActivityName", targetCols[["ftCode"]])
dtTidy <- dt[ , targetColsCode, with = FALSE]
```

## Fixing column names

Defines the initial tidy names for columns:


```r
TidyColNames <- c("Subject", "ActivityName", as.character(targetCols[["ftName"]]))
```

Fixes the column names to be more understandable:


```r
TidyColNames <- gsub("^t", "time", TidyColNames)
TidyColNames <- gsub("^f", "frequency", TidyColNames)
TidyColNames <- gsub("Acc", "Accelerometer", TidyColNames)
TidyColNames <- gsub("Gyro", "Gyroscope", TidyColNames)
TidyColNames <- gsub("mean[(][)]", "Mean",TidyColNames)
TidyColNames <- gsub("std[(][)]", "Std",TidyColNames)
TidyColNames <- gsub("-", "",TidyColNames)
```

Renames the columns in the tidy data table:


```r
names(dtTidy) <- TidyColNames
```

## Second data set

Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


```r
dtTidy2 <- dtTidy %>% group_by(Subject, ActivityName) %>% summarise_each(funs(mean))
```

## Writing output file

Writes the output text files:


```r
filename1 <- "tidy_project_data(large).txt"
filename2 <- "tidy_project_data(reduced).txt"
write.table(dtTidy, file.path(path, filename1), row.names=FALSE)
write.table(dtTidy2, file.path(path, filename2), row.names=FALSE)
```

The Codebook is generated here:

```r
knit("codebook.Rmd", output="codebook.md", encoding="ISO8859-1", quiet=TRUE)
```

```
## Error in parse_block(g[-1], g[1], params.src): duplicate label 'setup'
```

```r
markdownToHTML("codebook.md", "codebook.html")
```
