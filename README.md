# cleaningdata
For Getting and Cleaning Data project

###Analysis steps taken

1. The features (variable names) were loaded to memory using read.table
2. The activity labels were loaded to memory using read.table
3. The activities data corresponding to the test data was loaded to memory
3. The activities data corresponding to the test data was merged with activity labels data in order to obtain descriptive names for the test data activities
4. The activities data corresponding to the training data was loaded to memory
5. The activities data corresponding to the training data was merged with activity labels data in order to obtain descriptive names for the training data activities
6. The subject identities for the test data was loaded to memory
7. The subject identities for the training data was loaded to memory
8. The LaF library was loaded to memory
9. The test data from the fixed width file was loaded to memory
10. The activity names data and subjects data for the test data were merged with the test data set
11. The training data from the fixed width file was loaded to memory
12. The activity names data and subjects data for the test data were merged with the training data set
13. The training and the test sets were merged to create one data set using rbind
14. Only subjects, activity_names and measurements on the mean and standard deviation for each measurement were extracted from the combined data set
15. The dplyr library was loaded for use in grouping and summarizing to get means
16. The 'subjects' and 'activity_names' columns in the combined data set were converted to factors in order to use them to group 
17. The combined data set was grouped and summarized to create a second, independent tidy data set with the average of each variable for each activity and each subject.
18. The summarized data was written to file
