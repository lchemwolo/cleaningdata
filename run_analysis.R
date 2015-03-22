#load variable names
features <- read.table("features.txt",stringsAsFactors=FALSE, header=F, sep=" ")

#load activity labels
activity_labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE,col.names=c("activity_code","activity_name"),header=F, sep=" ")

#load test data activities
y_test <- read.fwf(
  file="y_test.txt",
  widths=c(1),col.names=c("activity_code"),buffersize = 2000)

#merge test data activities with the activity labels in order to start using labels which are friendly
y_test_merged<-merge(y_test,activity_labels,by.x="activity_code",by.y="activity_code")

#load training data activities
y_train <- read.fwf(
  file="y_train.txt",
  widths=c(1),col.names=c("activity_code"),buffersize = 2000)

#merge training data activities with the activity labels in order to start using labels which are friendly
y_train_merged<-merge(y_train,activity_labels,by.x="activity_code",by.y="activity_code")

#load subjects for test data
subject_test <- read.fwf(
  file="subject_test.txt",
  widths=c(1),col.names=c("subjects"),buffersize = 2000)

#load subjects for training data
subject_train <- read.fwf(
  file="subject_train.txt",
  widths=c(1),col.names=c("subjects"),buffersize = 2000)

#load LaF library to help in reading large fixed width files in a memory-friendly way
library(LaF)
#load the test data set in a memory-friendly way
laf_test <- laf_open_fwf("X_test.txt", column_widths = c(rep(16, each=561)), 
                    column_types=rep("numeric", 561),
                    column_names =features$V2)

#create data frame from the loaded data
X_test <- laf_test[,]
#get activity names and subjects vectors
activity_names<-y_test_merged$activity_name
subjects<-subject_test$subject

#append activity names data and subjects data on the test data set

X_test <- cbind(activity_names, X_test)
X_test <- cbind(subjects, X_test)

#load the training data set in a memory-friendly way
laf_train <- laf_open_fwf("X_train.txt", column_widths = c(rep(16, each=561)), 
                         column_types=rep("numeric", 561),
                         column_names =features$V2)

#create data frame from the loaded data
X_train <- laf_train[,]

#get activity names and subjects vectors
activity_names<-y_train_merged$activity_name
subjects<-subject_train$subject

#append activity names data and subjects data on the training data set
X_train <- cbind(activity_names, X_train)
X_train <- cbind(subjects, X_train)

#Merges the training and the test sets to create one data set
X_combined_set<- rbind(X_test, X_train)

#Extract only subjects, activity_names and measurements on the mean and standard deviation for each measurement. 
X_combined_mean_std<- X_combined_set[grep("subjects|activity_names|std\\.\\.|mean\\.\\.", names(X_combined_set), value=TRUE)]

#load the dplyr library for use in grouping and summarizing to get means
library(dplyr)

#Convert 'subjects' and 'activity_names' columns to factors in order to use them to group 
X_combined_mean_std[, 'subjects'] <- as.factor(X_combined_mean_std[, 'subjects'])
X_combined_mean_std[, 'activity_names'] <- as.factor(X_combined_mean_std[, 'activity_names'])

#group and summarize to create a second, independent tidy data set with the average of each variable for each activity and each subject.
X_combined_mean_std_grped<-group_by(X_combined_mean_std,subjects,activity_names)
X_combined_mean_std_grped_summarized <- X_combined_mean_std_grped %>% summarise_each(funs(mean(., na.rm = TRUE)))

#rename variables to signify that they are now means of original variables
library(stringr)
nam <- names(X_combined_mean_std_grped_summarized)
names(X_combined_mean_std_grped_summarized) <- ifelse(nam %in% c('subjects','activity_names'),nam,  str_c(nam, '-mean'))

#output the file
write.table(X_combined_mean_std_grped_summarized,"X_combined_mean_std_grped_summarized.txt",row.name=FALSE)

#len<-length(names(X_combined_mean_std_grped_summarized))
#write.table(data.frame(1:len,names(X_combined_mean_std_grped_summarized)),"feautures_summarized.txt",row.name=FALSE)