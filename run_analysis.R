## set working dir to the directory of the run_analysis.R file when it is executed (sourced)
thisDir <- dirname(parent.frame(2)$ofile) 
setwd(thisDir)

## check for and install plyr package if not already installed
is.installed <- function(mypkg) {
        is.element(mypkg, installed.packages()[,1])
}
if (!is.installed("plyr")) {
        install.packages("plyr")
}
library(plyr) ## launch plyr

## download zipped data if not already done so
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
localFile <- "./UCI HAR Dataset.zip"
if (!file.exists(localFile)) {
        download.file(fileUrl, localFile, method = "curl")
        library(tools) ## md5sum
        sink("download_metadata.txt") ## create metadata file with info about the download
        print("Download date:")
        print(Sys.time() )
        print("Download URL:")
        print(fileUrl)
        print("Downloaded file Information")
        print(file.info(localFile))
        print("Downloaded file md5 Checksum")
        print(md5sum(localFile))
        sink()
}

## unzip data from zip file and set working directory
unzip(localFile, overwrite = TRUE)
setwd("./UCI HAR Dataset")

## read features and labels
features <- read.table("./features.txt", header = FALSE)
activityLabels <- read.table("./activity_labels.txt", header = FALSE)
names(activityLabels) <- c("activityLabel", "activity")

## read data
subjectTrain <- read.table("./train/subject_train.txt", header = FALSE)
xTrain <- read.table("./train/X_train.txt", header = FALSE)
yTrain <- read.table("./train/y_train.txt", header = FALSE)
subjectTest <- read.table("./test/subject_test.txt", header = FALSE)
xTest <- read.table("./test/X_test.txt", header = FALSE)
yTest <- read.table("./test/y_test.txt", header = FALSE)

## combine subject info for train and test data
subject <- rbind(subjectTrain, subjectTest)
names(subject) <- "subject"

## combine activity info for train and test data
activity <- rbind(yTrain, yTest)
names(activity) <- "activityLabel"
activity <- join(activity, activityLabels) ## plyr ## match activity descriptions to activity labels

## merge training and test data into new dataset
dat <- rbind(xTrain, xTest)
names(dat) <- features[,2] ## label columns with features
datSub <- dat[,grep("mean\\(\\)|std\\(\\)", names(dat))] ## extract (subset) only the mean and stdev measurements

## create new data frame containing subject info, activity info and subsetted data
df <- cbind(subject, activity[,2], datSub)

## remove R-incompatible characters (dashes and parentheses) in variable names
names(df)[2] <- "activity"
names(df) <- gsub("-|\\(\\)-", "_", names(df))
names(df) <- gsub("\\(\\)$", "", names(df))
names(df) <- gsub("^fBodyBody", "fBody", names(df)) ## fix duplication error

## create a tidy data frame
dfTidy <- ddply(df, .(subject, activity), colwise(mean))
dfTidy <- arrange(dfTidy, activity) ## sort on activity

## write tidy data frame to file
setwd(thisDir) ## file destination is run_analysis.R file location
write.table(dfTidy, "UCI_HAR_dataset_tidy.txt", sep = "\t", row.names = FALSE)