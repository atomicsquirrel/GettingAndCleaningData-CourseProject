# Code and documentation corresponding to the course project 
# in the Coursera course 'Getting and Cleaning Data'
library(dplyr)
library(reshape2)

# Read the 'test' and 'train' tables:
# 	X, Y, subject_ 
# Take advantage of common naming scheme and use a loop
for (i in c("test","train")) {
	for (j in c("X","y","subject")) {
		tmp_source <- paste("./UCI HAR Dataset/",i,"/",j,"_",i,".txt",sep="")
		print(paste("Reading",tmp_source,sep=": "))
		assign(tolower(paste(i,j,sep="_")),read.table(tmp_source))
	}
}
remove(tmp_source)

# Read the 'features' table which gives the 
# key to the column names of the 561 columns
# of test_x/train_x :
col_names <- read.table("./UCI HAR Dataset/features.txt",sep=" ")

# Use the column names to rename the columns in test_x/train_x
names(test_x) <- col_names$V2
names(train_x) <- col_names$V2
remove(col_names)

# Rename the co
names(test_subject) <- "Subject"
names(train_subject) <- "Subject"

# Read the key to the activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",sep=" ")

# Match and replace the values in test_y/train_y with the 
# appropriate activity labels
names(test_y) <- "Activity"
names(train_y) <- "Activity"
test_y$Activity <- as.character(test_y$Activity)
train_y$Activity <- as.character(train_y$Activity)
for (i in 1:6) {
	tmp_label <- as.character(activity_labels$V2[i])
	test_y$Activity[test_y$Activity == as.character(i)] <- tmp_label
	train_y$Activity[train_y$Activity == as.character(i)] <- tmp_label
}
remove(tmp_label,activity_labels)

# Combine X, Y, and subject data sets
test_frame <- cbind(test_subject,test_x,test_y)
train_frame <- cbind(train_subject,train_x,train_y)
remove(train_subject,train_x,train_y,test_subject,test_x,test_y)

# Extract only those columns which include the 
# mean or the standard deviation. The target 
# columns are here assumed to have either 
# "*std*" or "*mean*" in their names. Extract
# the indices, combine both lists and sort the 
# result (to conserve order)
for (i in c("test","train")) {
	tmp_df <- get(paste(i,"frame",sep="_"))
	tmp_names <- names(tmp_df)
	idx_std <- grep("std",tmp_names,ignore.case=TRUE)
	idx_mean <- grep("mean",tmp_names,ignore.case=TRUE)
	idx_test <- sort(c(idx_std,idx_mean))
	assign(paste("reduced",i,"frame",sep="_"),subset(tmp_df, select=c(tmp_names[idx_test],"Subject","Activity")))
}
remove(tmp_df,tmp_names,idx_std,idx_mean,idx_test,test_frame,train_frame)
	
# merge the test and train data frames and order the 
# result according to the subject
merged <- rbind(reduced_test_frame,reduced_train_frame)
merged <- arrange(merged,Subject)
remove(reduced_test_frame,reduced_train_frame)

# Some column names contain a comma which leads to problems 
# with ddply. Replace commas with dashes. Also remove all
# the unneccesary parentheses
# names(merged) <- gsub(",", "-",names(merged)) # replace comma with dash
# names(merged) <- gsub("\\()", "",names(merged)) # remove empty parentheses
# names(merged) <- gsub("\\(", "-",names(merged)) # replace left parentheses with dash
# names(merged) <- gsub("\\)", "-",names(merged)) # replace right parentheses with dash
# names(merged) <- gsub("-$", "",names(merged)) # remove trailing dashes
# names(merged) <- gsub("-", "",names(merged)) # remove trailing dashes


# Summarize the Subjects in all categories. Remove Activity columns
# as it is character not numeric
tmp_merged <- subset(merged,select=-Activity)
tmp_merged_melt <- melt(tmp_merged, id.vars="Subject")
tmp_df <- ddply(tmp_merged_melt, .(Subject, variable), summarize, mean=mean(value))
summary <- dcast(tmp_df, Subject~variable, value.var="mean")
remove(tmp_merged,tmp_merged_melt,tmp_df)

# Write result to work space
write.csv(summary, file = "tidy_data_summary.csv")
