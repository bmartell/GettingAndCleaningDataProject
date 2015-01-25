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

workingDir<-"C:/Users/bmartell"
setwd(workingDir)

if(!file.exists("GettingAndCleaningDataProject"))
  dir.create("GettingAndCleaningDataProject")

workingDir<-paste(workingDir,"GettingAndCleaningDataProject",sep = "/")
setwd(workingDir)

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# Download file from given URL and put into downloadedFile.zip - default method --> internal on windows
download.file(fileURL, "downloadedFile.zip")
dateDownloaded <- date()

# Unzip file -> get the "UCI HAR Dataset" directory
files <- unzip("downloadedFile.zip")

#put files into R tables

activity_labels<-read.table(files[1],header=FALSE,colClasses = "character") #6 activities
features<-read.table(files[2],header=FALSE,colClasses = "character") #list of 561 features

x_test<-read.table(files[15],header=FALSE)
x_train<-read.table(files[27],header=FALSE)
y_test<-read.table(files[16],header=FALSE)
y_train<-read.table(files[28],header=FALSE)

subject_test<-read.table(files[14],header=FALSE) #2947 obs (test subjects ids)
subject_train<-read.table(files[26],header=FALSE)#7352 obs (train subjects ids)

body_acc_x_test<-read.table(files[5],header=FALSE)
body_acc_y_test<-read.table(files[6],header=FALSE)
body_acc_z_test<-read.table(files[7],header=FALSE)
body_gyro_x_test<-read.table(files[8],header=FALSE)
body_gyro_y_test<-read.table(files[9],header=FALSE)
body_gyro_z_test<-read.table(files[10],header=FALSE)
total_acc_x_test<-read.table(files[11],header=FALSE)
total_acc_y_test<-read.table(files[12],header=FALSE)
total_acc_z_test<-read.table(files[13],header=FALSE)

body_acc_x_train<-read.table(files[17],header=FALSE)
body_acc_y_train<-read.table(files[18],header=FALSE)
body_acc_z_train<-read.table(files[19],header=FALSE)
body_gyro_x_train<-read.table(files[20],header=FALSE)
body_gyro_y_train<-read.table(files[21],header=FALSE)
body_gyro_z_train<-read.table(files[22],header=FALSE)
total_acc_x_train<-read.table(files[23],header=FALSE)
total_acc_y_train<-read.table(files[24],header=FALSE)
total_acc_z_train<-read.table(files[25],header=FALSE)

#point 1 - Merges the training and the test sets to create one data set.

data_set<-rbind(x_train,x_test) #create a global dataset (training+test data sets) 10299 values
colnames(data_set)<-features$V2
subject<-rbind(subject_train,subject_test) #create a global subject vector (training+test subject vectors) 10299 values
colnames(subject)<-"subjects"
activities<-rbind(y_train,y_test) ##create a global label vector (training+test labels vectors) 10299 values
colnames(activities)<-"activities"

total_acc_x<-rbind(total_acc_x_train,total_acc_x_test) #10299 obs 128 var


#create labels for total_acc_x
total_acc_x_labels<-c(1:128)
for(i in 1:128)
{
  total_acc_x_labels[i]<-paste("total_acc_x_", i, sep = "")    
}

#set total_acc_x colnames
colnames(total_acc_x)<-total_acc_x_labels

total_acc_y<-rbind(total_acc_y_train,total_acc_y_test) #10299 obs 128 var

#create labels for total_acc_y
total_acc_y_labels<-c(1:128)
for(i in 1:128)
{
  total_acc_y_labels[i]<-paste("total_acc_y_", i, sep = "")    
}

#set total_acc_y colnames
colnames(total_acc_y)<-total_acc_y_labels

total_acc_z<-rbind(total_acc_z_train,total_acc_z_test) #10299 obs 128 var

#create labels for total_acc_z
total_acc_z_labels<-c(1:128)
for(i in 1:128)
{
  total_acc_z_labels[i]<-paste("total_acc_z_", i, sep = "")    
}

#set total_acc_z colnames
colnames(total_acc_z)<-total_acc_z_labels


body_acc_x<-rbind(body_acc_x_train,body_acc_x_test) #10299 obs 128 var

body_acc_x_labels<-c(1:128)
for(i in 1:128)
{
  body_acc_x_labels[i]<-paste("body_acc_x_", i, sep = "")    
}

#set body_acc_x colnames
colnames(body_acc_x)<-body_acc_x_labels

body_acc_y<-rbind(body_acc_y_train,body_acc_y_test) #10299 obs 128 var

body_acc_y_labels<-c(1:128)
for(i in 1:128)
{
  body_acc_y_labels[i]<-paste("body_acc_y_", i, sep = "")    
}

#set body_acc_y colnames
colnames(body_acc_y)<-body_acc_y_labels

body_acc_z<-rbind(body_acc_z_train,body_acc_z_test) #10299 obs 128 var

body_acc_z_labels<-c(1:128)
for(i in 1:128)
{
  body_acc_z_labels[i]<-paste("body_acc_z_", i, sep = "")    
}

#set body_acc_z colnames
colnames(body_acc_z)<-body_acc_z_labels

body_gyro_x<-rbind(body_gyro_x_train,body_gyro_x_test)  #10299 obs 128 var

body_gyro_x_labels<-c(1:128)
for(i in 1:128)
{
  body_gyro_x_labels[i]<-paste("body_gyro_x_", i, sep = "")    
}

#set body_gyro_x colnames
colnames(body_gyro_x)<-body_gyro_x_labels

body_gyro_y<-rbind(body_gyro_y_train,body_gyro_y_test)  #10299 obs 128 var

body_gyro_y_labels<-c(1:128)
for(i in 1:128)
{
  body_gyro_y_labels[i]<-paste("body_gyro_y_", i, sep = "")    
}

#set body_gyro_y colnames
colnames(body_gyro_y)<-body_gyro_y_labels


body_gyro_z<-rbind(body_gyro_z_train,body_gyro_z_test)  #10299 obs 128 var

body_gyro_z_labels<-c(1:128)
for(i in 1:128)
{
  body_gyro_z_labels[i]<-paste("body_gyro_z_", i, sep = "")    
}

#set body_gyro_z colnames
colnames(body_gyro_z)<-body_gyro_z_labels



global_set<-cbind(activities,subject,data_set,body_gyro_x,body_gyro_y, body_gyro_z, body_acc_x,body_acc_y,body_acc_z, total_acc_x,total_acc_y,total_acc_z)