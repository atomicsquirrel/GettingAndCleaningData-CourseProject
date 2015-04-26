## CodeBook

This CodeBook file relates to the Course Project in the Coursera Course 
"Getting and Cleaning Data". Here, I outline the basic functionality of 
the analysis script "run_analysis.R". The script does the following:

* The R script "run_analysis.R" assumes that your working directory is currently the same directory in which you unzipped the data file. 
* After loading some packages which will be necessary later in the script, the relevant ".txt" files are read into the workspace.
* The script then replaces the generic column names with descriptive column names as provided in the downloaded data repository
* This is followed by changing the numerical activity coding to a descriptive entry.
* The three test and train files, respectively, are combined into a single data frame.
* The data frames are then reduced to contain only selected columns as per the assignment
* This is followed by the combination of the test and train data sets
* In a last step, all remaing columns are summarized as per their mean for each subject separately. 
* The results are saved in a new, tidy data set.
* The tidy data set is saved to the work spaca as .csv
* All along the script, variables are removed from the workspace when not needed anymore to keep memory usage minimal.



The columns in the final, tidy data set are labeled as follows. Be advised that the descriptive 
activity column had to be removed in the summary step due to its non-numeric nature. It is, 
however, contained and appropriately labeled in the last data frame prior to the summary stage.

Columns in final summary data frame:

 [1] "Subject"                             
 [2] "tBodyAcc-mean()-X"                   
 [3] "tBodyAcc-mean()-Y"                   
 [4] "tBodyAcc-mean()-Z"                   
 [5] "tBodyAcc-std()-X"                    
 [6] "tBodyAcc-std()-Y"                    
 [7] "tBodyAcc-std()-Z"                    
 [8] "tGravityAcc-mean()-X"                
 [9] "tGravityAcc-mean()-Y"                
[10] "tGravityAcc-mean()-Z"                
[11] "tGravityAcc-std()-X"                 
[12] "tGravityAcc-std()-Y"                 
[13] "tGravityAcc-std()-Z"                 
[14] "tBodyAccJerk-mean()-X"               
[15] "tBodyAccJerk-mean()-Y"               
[16] "tBodyAccJerk-mean()-Z"               
[17] "tBodyAccJerk-std()-X"                
[18] "tBodyAccJerk-std()-Y"                
[19] "tBodyAccJerk-std()-Z"                
[20] "tBodyGyro-mean()-X"                  
[21] "tBodyGyro-mean()-Y"                  
[22] "tBodyGyro-mean()-Z"                  
[23] "tBodyGyro-std()-X"                   
[24] "tBodyGyro-std()-Y"                   
[25] "tBodyGyro-std()-Z"                   
[26] "tBodyGyroJerk-mean()-X"              
[27] "tBodyGyroJerk-mean()-Y"              
[28] "tBodyGyroJerk-mean()-Z"              
[29] "tBodyGyroJerk-std()-X"               
[30] "tBodyGyroJerk-std()-Y"               
[31] "tBodyGyroJerk-std()-Z"               
[32] "tBodyAccMag-mean()"                  
[33] "tBodyAccMag-std()"                   
[34] "tGravityAccMag-mean()"               
[35] "tGravityAccMag-std()"                
[36] "tBodyAccJerkMag-mean()"              
[37] "tBodyAccJerkMag-std()"               
[38] "tBodyGyroMag-mean()"                 
[39] "tBodyGyroMag-std()"                  
[40] "tBodyGyroJerkMag-mean()"             
[41] "tBodyGyroJerkMag-std()"              
[42] "fBodyAcc-mean()-X"                   
[43] "fBodyAcc-mean()-Y"                   
[44] "fBodyAcc-mean()-Z"                   
[45] "fBodyAcc-std()-X"                    
[46] "fBodyAcc-std()-Y"                    
[47] "fBodyAcc-std()-Z"                    
[48] "fBodyAcc-meanFreq()-X"               
[49] "fBodyAcc-meanFreq()-Y"               
[50] "fBodyAcc-meanFreq()-Z"               
[51] "fBodyAccJerk-mean()-X"               
[52] "fBodyAccJerk-mean()-Y"               
[53] "fBodyAccJerk-mean()-Z"               
[54] "fBodyAccJerk-std()-X"                
[55] "fBodyAccJerk-std()-Y"                
[56] "fBodyAccJerk-std()-Z"                
[57] "fBodyAccJerk-meanFreq()-X"           
[58] "fBodyAccJerk-meanFreq()-Y"           
[59] "fBodyAccJerk-meanFreq()-Z"           
[60] "fBodyGyro-mean()-X"                  
[61] "fBodyGyro-mean()-Y"                  
[62] "fBodyGyro-mean()-Z"                  
[63] "fBodyGyro-std()-X"                   
[64] "fBodyGyro-std()-Y"                   
[65] "fBodyGyro-std()-Z"                   
[66] "fBodyGyro-meanFreq()-X"              
[67] "fBodyGyro-meanFreq()-Y"              
[68] "fBodyGyro-meanFreq()-Z"              
[69] "fBodyAccMag-mean()"                  
[70] "fBodyAccMag-std()"                   
[71] "fBodyAccMag-meanFreq()"              
[72] "fBodyBodyAccJerkMag-mean()"          
[73] "fBodyBodyAccJerkMag-std()"           
[74] "fBodyBodyAccJerkMag-meanFreq()"      
[75] "fBodyBodyGyroMag-mean()"             
[76] "fBodyBodyGyroMag-std()"              
[77] "fBodyBodyGyroMag-meanFreq()"         
[78] "fBodyBodyGyroJerkMag-mean()"         
[79] "fBodyBodyGyroJerkMag-std()"          
[80] "fBodyBodyGyroJerkMag-meanFreq()"     
[81] "angle(tBodyAccMean,gravity)"         
[82] "angle(tBodyAccJerkMean),gravityMean)"
[83] "angle(tBodyGyroMean,gravityMean)"    
[84] "angle(tBodyGyroJerkMean,gravityMean)"
[85] "angle(X,gravityMean)"                
[86] "angle(Y,gravityMean)"                
[87] "angle(Z,gravityMean)"                
