## CodeBook

This CodeBook file relates to the Course Project in the Coursera Course 
"Getting and Cleaning Data". The basic functionality of the analysis 
script "run_analysis.R" is outlined in the accompanying README file. 

The columns in the final, tidy data set are labeled as follows. Be advised that the descriptive 
activity column had to be removed in the summary step due to its non-numeric nature. It is, 
however, contained and appropriately labeled in the last data frame prior to the summary stage 
(see R code).

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



Below, I reproduce the codebook of the original data set which contains additional details on the 
nature of the experiment and the collected data.


###Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

*tBodyAcc-XYZ
*tGravityAcc-XYZ
*tBodyAccJerk-XYZ
*tBodyGyro-XYZ
*tBodyGyroJerk-XYZ
*tBodyAccMag
*tGravityAccMag
*tBodyAccJerkMag
*tBodyGyroMag
*tBodyGyroJerkMag
*fBodyAcc-XYZ
*fBodyAccJerk-XYZ
*fBodyGyro-XYZ
*fBodyAccMag
*fBodyAccJerkMag
*fBodyGyroMag
*fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

*mean(): Mean value
*std(): Standard deviation
*mad(): Median absolute deviation 
*max(): Largest value in array
*min(): Smallest value in array
*sma(): Signal magnitude area
*energy(): Energy measure. Sum of the squares divided by the number of values. 
*iqr(): Interquartile range 
*entropy(): Signal entropy
*arCoeff(): Autorregresion coefficients with Burg order equal to 4
*correlation(): correlation coefficient between two signals
*maxInds(): index of the frequency component with largest magnitude
*meanFreq(): Weighted average of the frequency components to obtain a mean frequency
*skewness(): skewness of the frequency domain signal 
*kurtosis(): kurtosis of the frequency domain signal 
*bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
*angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

*gravityMean
*tBodyAccMean
*tBodyAccJerkMean
*tBodyGyroMean
*tBodyGyroJerkMean

      
