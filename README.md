-----------------------
Code Objective
-----------------------

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis  

-----------------------
Code Output
-----------------------

A 'tidy' R data frame named 'train_test_average'.  This data frame contains one observation per subject and activity with the mean of each of the features as additional columns.  The data frame can be considered 'tidy' as it:

*  has 1 variable per column
*  contains information about only 1 type of observation

The final output of the code is .txt file of the 'tidy' data set named 'fitness_data_tidy.txt'  

-----------------------
Code Steps
-----------------------

The R script called run_analysis.R that does the following:  

**STEP 1.)**  Downloads and unzips the necessary datasets from the following location:  

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Note that the code will download and unzip the files into your working directory.  If a folder named 'data' does no exist it will be created  

**STEP 2.)**  Reads in the main dataset containing the features, the activity codes and the subjects for both the test and training records  

NOTE:  A function was written for this step to reduce the amount of code that had to be written.  This meant that the same code could be used to read in both the test and training files  

**STEP 3.)**  Extracts only the measurements on the mean and standard deviation for each meaurement

NOTE:  The code first of all identifies all the column indices where 'mean' is in the description.  This brings back some rows with meanFreq in the description and the desicion was made to exclude these  

&nbsp;&nbsp;&nbsp;&nbsp;The code then identifies all the column indices with 'std' in the description and rbinds it together with the mean indices.  The feature_num variable is used to identify the correct features  

**STEP 4.)**  Uses descriptive activity names to name the activities in the dataset  

NOTE:  This is done by merging the activity_labels e.g. WALKING etc to the activity_number from the main data set  

**STEP 5.)** Appropriately labels the data set with descriptive variable names  

NOTE:  This is done by using the final variable descriptions identified from the text search in step 3 and using the colnames() function  

**STEP 6.)** From the data set in step 5, create a second, independent tidy data set with the average of each variable for each activity and each subject  

NOTE:  This is done by first 'melting' the dataset using the reshape2 package using the subject and activity labels as the ID's and the features as the measures.  The data set is then cast back to being short and long and containing the mean of each of the activities