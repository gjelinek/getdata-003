README
======

## Prerequisites

### Libraries
* plyr
* reshape2

### Data
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The downloaded getdata_projectfiles_UCI HAR Dataset.zip file have to be unzipped into the <workspace> folder. The <workspace> folder can be found by the getwd() function or can be set by the setwd() function if it is necessary.

## Processing steps

The tidy dataset is created by the run_analysis.R scriptt through the following steps.

* Read source data from <workspace>/UCI HAR Dataset/... folder structure

* Fit together the read data data frames into a single data frame

1. Change activity codes to activity labels in Y train set
2. Change activity codes to activity labels in Y test set
3. Fit together the training and the test X sets
4. Fit together the training and the test Y sets
5. Fit together the training and the test subjects
6. Fit together the X, Y and the subjects sets

* Find data frame columns which contain mean() and std()

* Modify feature names to fit the naming conventions

1. Remove spaces
2. Remove any punctuation
3. Change uppercase characters to lowercase characters

* Assign names to the merged dataframe

* Filter avg+std columns + subject + activity into a new data frame

* Reshape data - MELT, without NA

* Reshape data and calculate AVG-s - DCAST, missing combinations will not be dropped

* Extend variable names with "avg"

* change factor labels

* Write tidydata.txt
