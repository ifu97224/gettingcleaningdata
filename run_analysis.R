####### Getting and Cleaning Data Course Proejct #########

#### Date Created:  02/16/15
#### Created by:  Richard Downey


#  NOTE:  The data used for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone

# This code will: 

# 1.) Download and unzip the necessary datasets
# 2.) Merge the training and the test sets to create one data set.
# 3.) Extract only the measurements on the mean and standard deviation for each measurement
# 4.) Use descriptive activity names to name the activities in the data set
# 5.) Appropriately label the data set with descriptive variable names
# 6.) From the data set in step 5, create a second, independent tidy data set with the average of each variable for 
#     each activity and each subject

# set the working directory
setwd("/users/Richard/Documents/Coursera Data Science Track/Getting and Cleaning Data/Assignments/Course Project")
getwd()

##### STEP 1:  DOWNLOAD AND UNZIP THE NECESSARY DATASETS #########

# check to see if the data directory is created, if not create it
if (!file.exists("data")) {
  dir.create("data")
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "./data/project_files.zip", 
              method = "curl")
list.files("./")
dateDownloaded <- date()
dateDownloaded

# unzip the files
unzip(zipfile = "./data/project_files.zip",
      exdir = "./data")

# read in the activity labels
activity_labels <- read.table("./data/UCI HAR DATASET/activity_labels.txt",
                              col.names = c("activity_number","activity_type"))

head(activity_labels)

###### STEP 2:  MERGE THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET ##########

# read in the feature labels
feature_labels <- read.table("./data/UCI HAR DATASET/features.txt",
                             col.names = c("feature_num","feature_label"))
head(feature_labels)

#### the following function will read in the datasets for the training sample and then the test sample ###

import_files <- function(ds,rows){
  
  # main training or test set
  url <- paste("./data/UCI HAR DATASET/",ds,"/","X_",ds,".txt",sep = "")
  x <- read.table(url,
                  nrows = rows)
    
  head(x)
  str(x)
  summary(x)
  
  # training set labels (the activity numbers)
  url <- paste("./data/UCI HAR DATASET/",ds,"/","Y_",ds,".txt",sep = "")
  y <- read.table(url,
                  col.names = "activity_number")
  
  head(y)
  str(y)
  summary(y)

  # subject numbers
  url <- paste("./data/UCI HAR DATASET/",ds,"/","subject_",ds,".txt",sep = "")
  subject <- read.table(url,
                        col.names = "subject")
  
  head(subject)
  str(subject)
  summary(subject)

  
  # merge the datasets together with cbind
  out_ds <- cbind(subject,y,x)
  
  # sort the dataset by subject and activity number
  library(plyr)
  out_ds <- arrange(out_ds,subject,activity_number)
  
  # create a variable identifying the records as being part of the test set or the training set
  out_ds$test_train <- ds
  table(out_ds$test_train)

  # output the final ds
  output <- paste(ds,"_ds",sep = "")
  assign(output,out_ds,envir = .GlobalEnv)
  
}

# call the function for the test datasets
import_files("test",2947)

# call the function for the training datasets
import_files("train",7352)

##### STEP 2:  MERGE THE TRAINING AND TEST SETS TO CREATE 1 DATASET ########
train_test_ds <- rbind(test_ds,train_ds)

# frequency of training and testing records
table(train_test_ds$test_train)

# remove the individual datasets no longer needed
rm(test_ds)
rm(train_ds)

##### STEP 3: EXCTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT ######

# identify the records with a feature of mean
features <- feature_labels$feature_label
drop_vars <- names(train_test_ds) %in% c("subject", "activity_number", "test_train") 
features_ds <- train_test_ds[!drop_vars]
names(features_ds)

# note that this pulls back features including 'meanFreq' which I don't want
keep_mean_features <- grep("mean", features)
mean_featuresInc_freq <- feature_labels[keep_mean_features,]

# identify records with meanFreq so I can exclude them
keep_meanFreq_features <- grep("meanFreq", features)
meanFreq_features <- feature_labels[keep_meanFreq_features,]

# Do excluding merge to keep only mean features (not the meanFreq)
mean_featuresExc_freq <- merge(mean_featuresInc_freq,meanFreq_features,by.x = "feature_num",by.y = "feature_num", all.x = TRUE)
exclude <- complete.cases(mean_featuresExc_freq)
mean_ds <- mean_featuresInc_freq[!exclude,]


# identify the records with a feature of standard deviation
keep_std_features <- grep("std",features)
std_ds <- feature_labels[keep_std_features,]

# create a dataset containing only the 'mean' (NOT INCLUDING MEANFREQ) and 'freq' variables
keep_vars <- rbind(mean_ds,std_ds)
keep_vars <- arrange(keep_vars,feature_num)

# subset the dataset containing all features
features_ds <- features_ds[,keep_vars$feature_num]

# get a dataframe with just the subject, activity_number and test_train variables
other_vars <- train_test_ds[drop_vars]

# merge back all data - this dataset now contains only the 'mean' and 'freq' variables
train_test_filter <- cbind(other_vars,features_ds)


##### STEP 4:  USE DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET ##########

# merge on the descriptive activity names
train_test_filter <- merge(activity_labels,train_test_filter,by.x = "activity_number",by.y = "activity_number", all = F)


##### STEP 5:  APPROPRIATELY LABEL THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES ######

# keep only the subject, activity_labels and test_train variables (I'm dropping the activity number - it's not really needed now that
# I have merge on the label)
vars <- names(train_test_filter) %in% c("subject", "activity_type", "test_train") 
labels <- train_test_filter[,vars]
colnames(features_ds) <- keep_vars$feature_label 
train_test_filter <- cbind(labels,features_ds)

# 6.) FROM THE DATASET IN STEP 5, CREATE A SECOND, INDEPENDENT TIDY DATA SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY
#     AND EACH SUBJECT

table(train_test_filter$activity_type)
train_test_filter <- arrange(train_test_filter,subject,activity_type)

# melt the dataset to be long and skinny
library(reshape2)
measures <- keep_vars$feature_label
train_test_melt <- melt(train_test_filter,id = c("activity_type","subject","test_train"),measure.vars = measures)

train_test_avg <- dcast(train_test_melt,subject ~ variable + activity_type, mean)

train_test_avg <- dcast(train_test_melt,subject + activity_type + test_train ~ variable, mean)

# change the training and testing variable to upper case to match the rest of the character variables
train_test_avg$test_train <- toupper(train_test_avg$test_train)

# create the final datset to upload
write.table(train_test_avg,
            "./data/fitness_data_tidy.txt",
            row.name = FALSE)
