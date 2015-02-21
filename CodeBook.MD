---
title: "CodeBook.MD"
output: html_document
---

Data Dictionary (Code Book) for fitness_data_tidy.txt

Note:  The data set contains 180 observations and 69 variables

Variable Name: subject
Description: The number of the 'subject' - a unique identifier for the individual subject being studied
Variable Class:  Integer
Values:  1..30

Variable Name:  activity_type
Description:  The activity to which the measures relate
Variable Class:  Factor with 6 levels
Values:    LAYING
           SITTING
           STANDING
           WALKING
           WALKING_UPSTAIRS
           WALKING_DOWNSTAIRS
           
Variable Name:  test_train
Description:  Identifies if the subject was part of the test or training dataset from the original files
Variable Class:  Factor with 2 levels
Values:    TEST .The subject was part of the test file
           TRAIN. The subject was part of the training file
         
The remaining 66 variables in the data frame are the averages of the mean or standard deviation taken from the following measurements:
         
tBodyAcc
tGravityAcc
tBodyAccJerk
tBodyGyro
tBodyGyroJerk
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc
fBodyAccJerk
fBodyGyro
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
         
Where:

.mean...X represents the average of the mean values on the X measurement
.mean...Y represents the average of the mean values on the Y measurement
.mean...Z represents the average of the mean values on the Z measurement
.std...X represents the average of the standard deviation values on the X measurement
.std...Y represents the average of the standard deviation values on the Y measurement
.std...Z represents the average of the standard deviation values on the Z measurement

All variables are numeric