Codebook for "Getting and Cleaning Data - tidy dataset"
======================================================
Coursera Project
================

The goal of the Coursera Project is calculating the mean of every mean or standard deviation value for every subject - activity pairs in the "Human Activity Recognition Using Smartphones Dataset" (UCI HAR Dataset) after merging the training and the test data.
The CodeBook has two main parts:

1. Description of the original UCI HAR Dataset (containing information about study design, the original feature selection, the files and the licence)
2. Description of the Coursera Project - tidy dataset (containing information about feature selection from UCI HAR Dataset and the summary tidy data)

The steps of how to prepare the tidy data using the UCI HAR Dataset are available in the README.md file.

#### List of file in this project:

* README.md: description of how to prepare the tidy data
* CodeBook.md: codebook
* run_analysis.R: R code for processing the UCI HAR Dataset
* tidydata.txt: tidy dataset

## I. UCI HAR Dataset

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Human Activity Recognition Using Smartphones Dataset
### Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
### www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

### License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

### Feature Selection -  UCI HAR Dataset

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

## II. Coursera Project - tidy dataset

### Variable naming conventions

* all lower case
* not duplicated
* not have underscores or dots or white spaces
* descriptive - variable and column names are inherited from the names used in the UCI HAR Dataset (after removing punctuation, white spaces and changing uppercase characters to lowercase) extending with the "avg" string referencing to the "average" word and the mean calculation.

### Feature Selection "Getting and Cleaning Data - tidy dataset"

The tidy dataset consits of every variable in the UCI HAR Dataset containing the **mean()** or the **std()** substring and the **activity** and **subject** variables.

* **subject** Subject of experiment
* **activity** Performed activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* **tbodyaccmeanx** Mean value of the tBodyAcc-mean()-X column from the original UCI HAR Dataset
* **tbodyaccmeany** Mean value of the tBodyAcc-mean()-Y column from the original UCI HAR Dataset
* **tbodyaccmeanz** Mean value of the tBodyAcc-mean()-Z column from the original UCI HAR Dataset
* **tbodyaccstdx** Mean value of the tBodyAcc-std()-X column from the original UCI HAR Dataset
* **tbodyaccstdy** Mean value of the tBodyAcc-std()-Y column from the original UCI HAR Dataset
* **tbodyaccstdz** Mean value of the tBodyAcc-std()-Z column from the original UCI HAR Dataset
* **tgravityaccmeanx** Mean value of the tGravityAcc-mean()-X column from the original UCI HAR Dataset
* **tgravityaccmeany** Mean value of the tGravityAcc-mean()-Y column from the original UCI HAR Dataset
* **tgravityaccmeanz** Mean value of the tGravityAcc-mean()-Z column from the original UCI HAR Dataset
* **tgravityaccstdx** Mean value of the tGravityAcc-std()-X column from the original UCI HAR Dataset
* **tgravityaccstdy** Mean value of the tGravityAcc-std()-Y column from the original UCI HAR Dataset
* **tgravityaccstdz** Mean value of the tGravityAcc-std()-Z column from the original UCI HAR Dataset
* **tbodyaccjerkmeanx** Mean value of the tBodyAccJerk-mean()-X column from the original UCI HAR Dataset
* **tbodyaccjerkmeany** Mean value of the tBodyAccJerk-mean()-Y column from the original UCI HAR Dataset
* **tbodyaccjerkmeanz** Mean value of the tBodyAccJerk-mean()-Z column from the original UCI HAR Dataset
* **tbodyaccjerkstdx** Mean value of the tBodyAccJerk-std()-X column from the original UCI HAR Dataset
* **tbodyaccjerkstdy** Mean value of the tBodyAccJerk-std()-Y column from the original UCI HAR Dataset
* **tbodyaccjerkstdz** Mean value of the tBodyAccJerk-std()-Z column from the original UCI HAR Dataset
* **tbodygyromeanx** Mean value of the tBodyGyro-mean()-X column from the original UCI HAR Dataset
* **tbodygyromeany** Mean value of the tBodyGyro-mean()-Y column from the original UCI HAR Dataset
* **tbodygyromeanz** Mean value of the tBodyGyro-mean()-Z column from the original UCI HAR Dataset
* **tbodygyrostdx** Mean value of the tBodyGyro-std()-X column from the original UCI HAR Dataset
* **tbodygyrostdy** Mean value of the tBodyGyro-std()-Y column from the original UCI HAR Dataset
* **tbodygyrostdz** Mean value of the tBodyGyro-std()-Z column from the original UCI HAR Dataset
* **tbodygyrojerkmeanx** Mean value of the tBodyGyroJerk-mean()-X column from the original UCI HAR Dataset
* **tbodygyrojerkmeany** Mean value of the tBodyGyroJerk-mean()-Y column from the original UCI HAR Dataset
* **tbodygyrojerkmeanz** Mean value of the tBodyGyroJerk-mean()-Z column from the original UCI HAR Dataset
* **tbodygyrojerkstdx** Mean value of the tBodyGyroJerk-std()-X column from the original UCI HAR Dataset
* **tbodygyrojerkstdy** Mean value of the tBodyGyroJerk-std()-Y column from the original UCI HAR Dataset
* **tbodygyrojerkstdz** Mean value of the tBodyGyroJerk-std()-Z column from the original UCI HAR Dataset
* **tbodyaccmagmean** Mean value of the tBodyAccMag-mean() column from the original UCI HAR Dataset
* **tbodyaccmagstd** Mean value of the tBodyAccMag-std() column from the original UCI HAR Dataset
* **tgravityaccmagmean** Mean value of the tGravityAccMag-mean() column from the original UCI HAR Dataset
* **tgravityaccmagstd** Mean value of the tGravityAccMag-std() column from the original UCI HAR Dataset
* **tbodyaccjerkmagmean** Mean value of the tBodyAccJerkMag-mean() column from the original UCI HAR Dataset
* **tbodyaccjerkmagstd** Mean value of the tBodyAccJerkMag-std() column from the original UCI HAR Dataset
* **tbodygyromagmean** Mean value of the tBodyGyroMag-mean() column from the original UCI HAR Dataset
* **tbodygyromagstd** Mean value of the tBodyGyroMag-std() column from the original UCI HAR Dataset
* **tbodygyrojerkmagmean** Mean value of the tBodyGyroJerkMag-mean() column from the original UCI HAR Dataset
* **tbodygyrojerkmagstd** Mean value of the tBodyGyroJerkMag-std() column from the original UCI HAR Dataset
* **fbodyaccmeanx** Mean value of the fBodyAcc-mean()-X column from the original UCI HAR Dataset
* **fbodyaccmeany** Mean value of the fBodyAcc-mean()-Y column from the original UCI HAR Dataset
* **fbodyaccmeanz** Mean value of the fBodyAcc-mean()-Z column from the original UCI HAR Dataset
* **fbodyaccstdx** Mean value of the fBodyAcc-std()-X column from the original UCI HAR Dataset
* **fbodyaccstdy** Mean value of the fBodyAcc-std()-Y column from the original UCI HAR Dataset
* **fbodyaccstdz** Mean value of the fBodyAcc-std()-Z column from the original UCI HAR Dataset
* **fbodyaccjerkmeanx** Mean value of the fBodyAccJerk-mean()-X column from the original UCI HAR Dataset
* **fbodyaccjerkmeany** Mean value of the fBodyAccJerk-mean()-Y column from the original UCI HAR Dataset
* **fbodyaccjerkmeanz** Mean value of the fBodyAccJerk-mean()-Z column from the original UCI HAR Dataset
* **fbodyaccjerkstdx** Mean value of the fBodyAccJerk-std()-X column from the original UCI HAR Dataset
* **fbodyaccjerkstdy** Mean value of the fBodyAccJerk-std()-Y column from the original UCI HAR Dataset
* **fbodyaccjerkstdz** Mean value of the fBodyAccJerk-std()-Z column from the original UCI HAR Dataset
* **fbodygyromeanx** Mean value of the fBodyGyro-mean()-X column from the original UCI HAR Dataset
* **fbodygyromeany** Mean value of the fBodyGyro-mean()-Y column from the original UCI HAR Dataset
* **fbodygyromeanz** Mean value of the fBodyGyro-mean()-Z column from the original UCI HAR Dataset
* **fbodygyrostdx** Mean value of the fBodyGyro-std()-X column from the original UCI HAR Dataset
* **fbodygyrostdy** Mean value of the fBodyGyro-std()-Y column from the original UCI HAR Dataset
* **fbodygyrostdz** Mean value of the fBodyGyro-std()-Z column from the original UCI HAR Dataset
* **fbodyaccmagmean** Mean value of the fBodyAccMag-mean() column from the original UCI HAR Dataset
* **fbodyaccmagstd** Mean value of the fBodyAccMag-std() column from the original UCI HAR Dataset
* **fbodybodyaccjerkmagmean** Mean value of the fBodyBodyAccJerkMag-mean() column from the original UCI HAR Dataset
* **fbodybodyaccjerkmagstd** Mean value of the fBodyBodyAccJerkMag-std() column from the original UCI HAR Dataset
* **fbodybodygyromagmean** Mean value of the fBodyBodyGyroMag-mean() column from the original UCI HAR Dataset
* **fbodybodygyromagstd** Mean value of the fBodyBodyGyroMag-std() column from the original UCI HAR Dataset
* **fbodybodygyrojerkmagmean** Mean value of the fBodyBodyGyroJerkMag-mean() column from the original UCI HAR Dataset
* **fbodybodygyrojerkmagstd** Mean value of the fBodyBodyGyroJerkMag-std() column from the original UCI HAR Dataset

### NA Values

The NA values are skipped during the data processing but incomplete subject - activity combinations are displayed in the final tidy dataset.

### The file format

The tidy data is available in the tab delimited **tidydata.txt**.