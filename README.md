# coursera-getdata

This repo for the course project for Getting and Cleaning Data on Coursera contains the following files:
* README.md -- this file
* [run_analysis.R](https://github.com/mvandenhurk/coursera-getdata/blob/master/run_analysis.R) -- an R script that downloads and preprocesses the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) to create a second, independent tidy data file
* [CodeBook.md](https://github.com/mvandenhurk/coursera-getdata/blob/master/CodeBook.md) -- a description of the contents of the tidy data file

## run_analysis.R
The run_analysis.R cleanup script does the following:
* Downloads the UCI HAR Dataset as a .zip file and unzips the data.
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the variable names of the data set.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

More details about the internal functioning of the code are included as inline comments within the actual R script.

### Running the script
To execute the script, source it within R or RStudio.
The dataset will get downloaded to and unzipped in the same directory as where the run_analysis.R script file resides.
The tidy data file will get created in that folder as **UCI_HAR_dataset_tidy.txt**.

### Dependencies
The [plyr](http://cran.r-project.org/web/packages/plyr/index.html) set of tools is required for the script to work. run_analysis.R will attempt to download and install this R package if not present already. An internet connection is required.

## Tidy data set
The tidy data set generated is a 180 x 68 data frame of the means of the mean and standard deviation measurements of each variable for each subject and each activity. Rows represent different subject/activity pairs and columns report the means of the variables for each pair.

### Reading the tidy data set into R
To read the tidy data file back into R for downstream analysis:
* Using `setwd()` set the working directory in R or RStudio to the same location as where the **UCI_HAR_dataset_tidy.txt** file resides.
* Run the following code in R:
`data <- read.table("UCI_HAR_dataset_tidy.txt", header = TRUE)`

The tidy data set is now stored in the **data** variable within R.