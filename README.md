## README

This README file relates to the Course Project in the Coursera Course 
"Getting and Cleaning Data". The relevant repository contains the 
following:

* This README file
* An R script called "run_analysis.R"
* A CodeBook.md file explaining the code and the variables
* A final tidy data set called "tidy_data_summary.csv" as per the assigment.

Here, I outline the basic functionality of the analysis script "run_analysis.R". 
The script does the following:

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
