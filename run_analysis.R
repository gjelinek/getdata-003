# install necessary libraries
# install.packages("plyr")
# install.packages("reshape2")

# Load necessary libraries
library(plyr)
library(reshape2)

# Read source data from <workspace>/UCI HAR Dataset/... folder structure
# The downloaded getdata_projectfiles_UCI HAR Dataset.zip file
#   have to be unzipped into the <workspace> folder
#   the <workspace> folder can be found by the getwd() function
#   or can be set by the setwd() function if it is necessary

features <- read.table("./UCI HAR Dataset/features.txt")
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
xtest  <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
ytest  <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjecttrain   <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subjecttest    <- read.table("./UCI HAR Dataset/test/subject_test.txt")
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Fit together the read data data frames into a single data frame
#   1. Change activity codes to activity labels in Y train set
#   2. Change activity codes to activity labels in Y test set
#   3. Fit together the training and the test X sets
#   4. Fit together the training and the test Y sets
#   5. Fit together the training and the test subjects
#   6. Fit together the X, Y and the subjects sets
ytrain <- merge(ytrain, activitylabels, sort = FALSE)[2]
ytest  <- merge(ytest, activitylabels, sort = FALSE)[2]
xfull  <- rbind(xtrain, xtest)
yfull  <- rbind(ytrain, ytest)
subjectfull <- rbind(subjecttrain, subjecttest)
datasetfull <- cbind(xfull, subjectfull, yfull)

# Find data frame columns which contain mean() and std()
featurefilter <- grepl("(mean\\(\\)|std\\(\\))", features$V2, perl = TRUE)

# Modify feature names to fit the naming conventions
#   1. Remove spaces
#   2. Remove any punctuation
#   3. Change uppercase characters to lowercase characters
featurenames <- gsub("([[:space:]])", "", features$V2, perl = TRUE)
featurenames <- gsub("([[:punct:]])", "", featurenames, perl = TRUE)
featurenames <- gsub("([[:upper:]])", "\\L\\1", featurenames, perl = TRUE)

# Assign names to datasetfull
#   Filter avg+std columns + subject + activity into a new data frame
names(datasetfull) <- c(featurenames, "subject", "activity")
datasetmeanstd <- datasetfull[c(featurefilter, TRUE, TRUE)]

# Reshape data - MELT
#   without NA
measurevarids <- 1 : (length(names(datasetmeanstd)) - 2)
datasetmeanstdavg <- melt(datasetmeanstd,
                          id.vars = c("subject", "activity"),
                          measure.vars = names(datasetmeanstd)[measurevarids],
                          na.rm = TRUE)

# Reshape data and calculate AVG-s - DCAST
#   missing combinations will not be dropped
datasetmeanstdavg <- dcast(datasetmeanstdavg,
                           subject + activity ~ variable,
                           mean,
                           drop = FALSE)

# Extend variable names with "avg"
names(datasetmeanstdavg) <- c("subject", "activity",
                              paste(names(datasetmeanstd)[measurevarids],
                                    "avg",
                                    sep = ""))

# Write table
#   change factor labels
settowrite <- datasetmeanstdavg
settowrite$activity[settowrite$activity == 1] <- "WALKING"
settowrite$activity[settowrite$activity == 2] <- "WALKING_UPSTAIRS"
settowrite$activity[settowrite$activity == 3] <- "WALKING_DOWNSTAIRS"
settowrite$activity[settowrite$activity == 4] <- "SITTING"
settowrite$activity[settowrite$activity == 5] <- "STANDING"
settowrite$activity[settowrite$activity == 6] <- "LAYING"
write.table(settowrite,
            file = "tidydata.txt",
            sep = "\t",
            col.names = TRUE,
            row.names = FALSE)

