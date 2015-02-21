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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SITTING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STANDING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING_UPSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING_DOWNSTAIRS  
           
Variable Name:  test_train  
Description:  Identifies if the subject was part of the test or training dataset from the original files  
Variable Class:  Factor with 2 levels  
Values:    TEST   The subject was part of the test file  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TRAIN  The subject was part of the training file  

Variable Name:  tBodyAcc.mean...X  
Description:  Mean time for the acceleration of body for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAcc.mean...Y  
Description:  Mean time for the acceleration of body for direction Y  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAcc.mean...Z  
Description:  Mean time for the acceleration of body for direction Z  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAcc.std...X  
Description:  Standard Deviation of time for the acceleration of body for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAcc.std...Y  
Description:  Standard Deviation of time for the acceleration of body for direction Y  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAcc.std...Z  
Description:  Standard Deviation of time for the acceleration of body for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tGravityAcc.mean...X    
Description:  Mean time for the gravity acceleration for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tGravityAcc.mean...Y    
Description:  Mean time for the gravity acceleration for direction Y    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tGravityAcc.mean...Z               
Description:  Mean time for the gravity acceleration for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tGravityAcc.std...X      
Description:  Standard Devitiation of time for the gravity acceleration for direction X    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tGravityAcc.std...Y        
Description:  Standard Devitiation of time for the gravity acceleration for direction Y    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tGravityAcc.std...Z                     
Description:  Standard Devitiation of time for the gravity acceleration for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAccJerk.mean...X        
Description:  Mean time of body jerk for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAccJerk.mean...Y    
Description:  Mean time of body jerk for direction Y  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAccJerk.mean...Z    
Description:  Mean time of body jerk for direction Z  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAccJerk.std...X          
Description:  Standard Deviation of time of body jerk for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAccJerk.std...Y      
Description:  Standard Deviation of time of body jerk for direction Y  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAccJerk.std...Z      
Description:  Standard Deviation of time of body jerk for direction Z  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyro.mean...X            
Description:  Mean measurement for body gyroscope for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyro.mean...Y    
Description:  Mean measurement for body gyroscope for direction Y    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyro.mean...Z    
Description:  Mean measurement for body gyroscope for direction Z  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyro.std...X              
Description:  Standard Deviation of measurement for body gyroscope for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyro.std...Y      
Description:  Standard Deviation of measurement for body gyroscope for direction Y    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyro.std...Z      
Description:  Standard Deviation of measurement for body gyroscope for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyroJerk.mean...X                
Description:  Mean of measurement for body gyroscope jerk for direction X  
Variable Class:  Numeric  :  Numeric  
Units:  Hz  

Variable Name:  tBodyGyroJerk.mean...Y    
Description:  Mean of measurement for body gyroscope jerk for direction Y    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyroJerk.mean...Z    
Description:  Mean of measurement for body gyroscope jerk for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyroJerk.std...X                
Description:  Standard Deviation of measurement for body gyroscope jerk for direction X      
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyroJerk.std...Y    
Description:  Standard Deviation of measurement for body gyroscope jerk for direction Y    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyroJerk.std...Z    
Description:  Standard Deviation of measurement for body gyroscope jerk for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAccMag.mean..                  
Description:  Mean of magnitude of body acceleration  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAccMag.std..  
Description:  Standard Deviation of magnitude of body acceleration  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tGravityAccMag.mean..    
Description:  Mean of magnitude of gravity acceleration  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tGravityAccMag.std..    
Description:  Standard Deviation of magnitude of gravity acceleration  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAccJerkMag.mean..      
Description:  Mean magnitude of body jerk  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyAccJerkMag.std..      
Description:  Standard Deviation of magnitude of body jerk  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyroMag.mean..          
Description:  Mean magnitude of gyroscope measurement for body  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyroMag.std..   
Description:  Standard Deviation magnitude of gyroscope measurement for body  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyroJerkMag.mean..            
Description:  Mean magnitude of jerk gyroscope measurement for body  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  tBodyGyroJerkMag.std..     
Description:  Standard Deviation of magnitude of jerk gyroscope measurement for body  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAcc.mean...X       
Description:  Mean frequency of body acceleration for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAcc.mean...Y       
Description:  Mean frequency of body acceleration for direction Y  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAcc.mean...Z       
Description:  Mean frequency of body acceleration for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAcc.std...X         
Description:  Standard Deviation of frequency of body acceleration for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAcc.std...Y         
Description:  Standard Deviation of frequency of body acceleration for direction Y    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAcc.std...Z  
Description:  Standard Deviation of frequency of body acceleration for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAccJerk.mean...X           
Description:  Mean frequency of body jerk acceleration for direction X    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAccJerk.mean...Y           
Description:  Mean frequency of body jerk acceleration for direction Y      
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAccJerk.mean...Z  
Description:  Mean frequency of body jerk acceleration for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAccJerk.std...X             
Description:  Standard Deviation of frequency of body jerk acceleration for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAccJerk.std...Y             
Description:  Standard Deviation of frequency of body jerk acceleration for direction Y    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAccJerk.std...Z    
Description:  Standard Deviation of frequency of body jerk acceleration for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyGyro.mean...X               
Description:  Mean frequency of body gyroscope for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyGyro.mean...Y               
Description:  Mean frequency of body gyroscope for direction Y    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyGyro.mean...Z   
Description:  Mean frequency of body gyroscope for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyGyro.std...X               
Description:  Standard Deviation of frequency of body gyroscope for direction X  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyGyro.std...Y               
Description:  Standard Deviation of frequency of body gyroscope for direction Y    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyGyro.std...Z  
Description:  Standard Deviation of frequency of body gyroscope for direction Z    
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAccMag.mean..                 
Description:  Mean frequency of body acceleration magnitude  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyAccMag.std..                 
Description:  Standard Deviation of frequency of body acceleration magnitude  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyBodyAccJerkMag.mean..   
Description:  Mean frequency of body acceleration jerk magnitude  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyBodyAccJerkMag.std..     
Description:  Standard Deviation of body acceleration jerk magnitude  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyBodyGyroMag.mean..      
Description:  Mean frequency of body gyroscope magnitude  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyBodyGyroMag.std..       
Description:  Standard Deviation of body gyroscope magnitude  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyBodyGyroJerkMag.mean..      
Description:  Mean frequency of body gyroscope jerk magnitude  
Variable Class:  Numeric  
Units:  Hz  

Variable Name:  fBodyBodyGyroJerkMag.std..   
Description:  Standard Deviation of frequency of body gyroscope jerk magnitude  
Variable Class:  Numeric  
Units:  Hz
