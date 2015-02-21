---
title: "CodeBook.MD"
output: html_document
---

======================================================
Data Dictionary (Code Book) for fitness_data_tidy.txt
======================================================

--------------------------------------------------------------
Note:  The data set contains 180 observations and 69 variables
---------------------------------------------------------------

Variable Name:    subject  
Description:      The unique identifier for the subject that participated in the study  
Variable Type:    Integer  
Variable Values:  1 - 30  

Variable Name:  activity_type  
Description:  The activity to which the measures relate  
Variable Class:  Factor with 6 levels  
Values:   LAYING  
          SITTING  
          STANDING  
          WALKING  
          WALKING_UPSTAIRS  
          WALKING_DOWNSTAIRS  
           
Variable Name:  test_train  
Description:  Identifies if the subject was part of the test or training dataset from the original files  
Variable Class:  Factor with 2 levels  
Values:    TEST   The subject was part of the test file  
           TRAIN  The subject was part of the training file  
    

tBodyAcc.mean...X
 [5] "tBodyAcc.mean...Y"           "tBodyAcc.mean...Z"           "tBodyAcc.std...X"            "tBodyAcc.std...Y"           
 [9] "tBodyAcc.std...Z"            "tGravityAcc.mean...X"        "tGravityAcc.mean...Y"        "tGravityAcc.mean...Z"       
[13] "tGravityAcc.std...X"         "tGravityAcc.std...Y"         "tGravityAcc.std...Z"         "tBodyAccJerk.mean...X"      
[17] "tBodyAccJerk.mean...Y"       "tBodyAccJerk.mean...Z"       "tBodyAccJerk.std...X"        "tBodyAccJerk.std...Y"       
[21] "tBodyAccJerk.std...Z"        "tBodyGyro.mean...X"          "tBodyGyro.mean...Y"          "tBodyGyro.mean...Z"         
[25] "tBodyGyro.std...X"           "tBodyGyro.std...Y"           "tBodyGyro.std...Z"           "tBodyGyroJerk.mean...X"     
[29] "tBodyGyroJerk.mean...Y"      "tBodyGyroJerk.mean...Z"      "tBodyGyroJerk.std...X"       "tBodyGyroJerk.std...Y"      
[33] "tBodyGyroJerk.std...Z"       "tBodyAccMag.mean.."          "tBodyAccMag.std.."           "tGravityAccMag.mean.."      
[37] "tGravityAccMag.std.."        "tBodyAccJerkMag.mean.."      "tBodyAccJerkMag.std.."       "tBodyGyroMag.mean.."        
[41] "tBodyGyroMag.std.."          "tBodyGyroJerkMag.mean.."     "tBodyGyroJerkMag.std.."      "fBodyAcc.mean...X"          
[45] "fBodyAcc.mean...Y"           "fBodyAcc.mean...Z"           "fBodyAcc.std...X"            "fBodyAcc.std...Y"           
[49] "fBodyAcc.std...Z"            "fBodyAccJerk.mean...X"       "fBodyAccJerk.mean...Y"       "fBodyAccJerk.mean...Z"      
[53] "fBodyAccJerk.std...X"        "fBodyAccJerk.std...Y"        "fBodyAccJerk.std...Z"        "fBodyGyro.mean...X"         
[57] "fBodyGyro.mean...Y"          "fBodyGyro.mean...Z"          "fBodyGyro.std...X"           "fBodyGyro.std...Y"          
[61] "fBodyGyro.std...Z"           "fBodyAccMag.mean.."          "fBodyAccMag.std.."           "fBodyBodyAccJerkMag.mean.." 
[65] "fBodyBodyAccJerkMag.std.."   "fBodyBodyGyroMag.mean.."     "fBodyBodyGyroMag.std.."      "fBodyBodyGyroJerkMag.mean.."
[69] "fBodyBodyGyroJerkMag.std.." 
         
Where:

.mean...X represents the average of the mean values on the X measurement
.mean...Y represents the average of the mean values on the Y measurement
.mean...Z represents the average of the mean values on the Z measurement
.std...X represents the average of the standard deviation values on the X measurement
.std...Y represents the average of the standard deviation values on the Y measurement
.std...Z represents the average of the standard deviation values on the Z measurement

All variables are numeric