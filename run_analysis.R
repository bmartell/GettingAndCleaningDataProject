# This script runs analysis on the dataset:
#
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#
# and
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive activity names. 
# 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#

setwd("C:/Users/bmartell")
if(!file.exists("GettingAndCleaningDataProject"))
  dir.create("GettingAndCleaningDataProject")

setwd("C:/Users/bmartell/GettingAndCleaningDataProject")

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# Download file from given URL and put into downloadedFile.zip - default method --> internal on windows
download.file(fileURL, "downloadedFile.zip")
dateDownloaded <- date()

# Unzip file -> get the "UCI HAR Dataset" directory
files <- unzip("downloadedFile.zip")

#tables <- list(1:length(files))

#for (i in 1:length(files)) {
#  tables <- read.table(files[i], sep=" ", header=TRUE ,quote="",na.strings=NA, nrows, skip)
#}



