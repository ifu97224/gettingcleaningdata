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
Variable Name:  tBodyAcc.mean...Y  
Variable Name:  tBodyAcc.mean...Z  

Variable Name:  tBodyAcc.std...X  
Variable Name:  tBodyAcc.std...Y  
Variable Name:  tBodyAcc.std...Z  

Variable Name:  tGravityAcc.mean...X    
Variable Name:  tGravityAcc.mean...Y    
Variable Name:  tGravityAcc.mean...Z               

Variable Name:  tGravityAcc.std...X      
Variable Name:  tGravityAcc.std...Y        
Variable Name:  tGravityAcc.std...Z                     

Variable Name:  tBodyAccJerk.mean...X        
Variable Name:  tBodyAccJerk.mean...Y    
Variable Name:  tBodyAccJerk.mean...Z    

Variable Name:  tBodyAccJerk.std...X          
Variable Name:  tBodyAccJerk.std...Y      
Variable Name:  tBodyAccJerk.std...Z      

Variable Name:  tBodyGyro.mean...X            
Variable Name:  tBodyGyro.mean...Y    
Variable Name:  tBodyGyro.mean...Z    
     
Variable Name:  tBodyGyro.std...X              
Variable Name:  tBodyGyro.std...Y      
Variable Name:  tBodyGyro.std...Z      

Variable Name:  tBodyGyroJerk.mean...X                
Variable Name:  tBodyGyroJerk.mean...Y    
Variable Name:  tBodyGyroJerk.mean...Z    

Variable Name:  tBodyGyroJerk.mean...X                
Variable Name:  tBodyGyroJerk.mean...Y    
Variable Name:  tBodyGyroJerk.mean...Z    

Variable Name:  tBodyGyroJerk.std...X                  
Variable Name:  tBodyGyroJerk.std...Y    
Variable Name:  tBodyGyroJerk.std...Z    

Variable Name:  tBodyAccMag.mean..                  
Variable Name:  tBodyAccMag.std..  

Variable Name:  tGravityAccMag.mean..    
Variable Name:  tGravityAccMag.std..    
      
Variable Name:  tBodyAccJerkMag.mean..      
Variable Name:  tBodyAccJerkMag.std..      

Variable Name:  tBodyGyroMag.mean..          
Variable Name:  tBodyGyroMag.std..   

Variable Name:  tBodyGyroJerkMag.mean..            
Variable Name:  tBodyGyroJerkMag.std..     

Variable Name:  fBodyAcc.mean...X       
Variable Name:  fBodyAcc.mean...Y       
Variable Name:  fBodyAcc.mean...Z       

Variable Name:  fBodyAcc.std...X         
Variable Name:  fBodyAcc.std...Y         
Variable Name:  fBodyAcc.std...Z  

Variable Name:  fBodyAccJerk.mean...X           
Variable Name:  fBodyAccJerk.mean...Y           
Variable Name:  fBodyAccJerk.mean...Z  

Variable Name:  fBodyAccJerk.std...X             
Variable Name:  fBodyAccJerk.std...Y             
Variable Name:  fBodyAccJerk.std...Z    

Variable Name:  fBodyGyro.mean...X               
Variable Name:  fBodyGyro.mean...Y               
Variable Name:  fBodyGyro.mean...Z   

Variable Name:  fBodyGyro.std...X               
Variable Name:  fBodyGyro.std...Y               
Variable Name:  fBodyGyro.std...Z  

Variable Name:  fBodyAccMag.mean..                 
Variable Name:  fBodyAccMag.std..                 
Variable Name:  fBodyBodyAccJerkMag.mean..   
Variable Name:  fBodyBodyAccJerkMag.std..     

Variable Name:  fBodyBodyGyroMag.mean..      
Variable Name:  fBodyBodyGyroMag.std..       
Variable Name:  fBodyBodyGyroJerkMag.mean..      
Variable Name:  fBodyBodyGyroJerkMag.std..   
         
