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

Variables in tidy data set

1 "subjects"
2 "activity_names"
3 "tBodyAcc-mean()-X-mean"
4 "tBodyAcc-mean()-Y-mean"
5 "tBodyAcc-mean()-Z-mean"
6 "tBodyAcc-std()-X-mean"
7 "tBodyAcc-std()-Y-mean"
8 "tBodyAcc-std()-Z-mean"
9 "tGravityAcc-mean()-X-mean"
10 "tGravityAcc-mean()-Y-mean"
11 "tGravityAcc-mean()-Z-mean"
12 "tGravityAcc-std()-X-mean"
13 "tGravityAcc-std()-Y-mean"
14 "tGravityAcc-std()-Z-mean"
15 "tBodyAccJerk-mean()-X-mean"
16 "tBodyAccJerk-mean()-Y-mean"
17 "tBodyAccJerk-mean()-Z-mean"
18 "tBodyAccJerk-std()-X-mean"
19 "tBodyAccJerk-std()-Y-mean"
20 "tBodyAccJerk-std()-Z-mean"
21 "tBodyGyro-mean()-X-mean"
22 "tBodyGyro-mean()-Y-mean"
23 "tBodyGyro-mean()-Z-mean"
24 "tBodyGyro-std()-X-mean"
25 "tBodyGyro-std()-Y-mean"
26 "tBodyGyro-std()-Z-mean"
27 "tBodyGyroJerk-mean()-X-mean"
28 "tBodyGyroJerk-mean()-Y-mean"
29 "tBodyGyroJerk-mean()-Z-mean"
30 "tBodyGyroJerk-std()-X-mean"
31 "tBodyGyroJerk-std()-Y-mean"
32 "tBodyGyroJerk-std()-Z-mean"
33 "tBodyAccMag-mean()-mean"
34 "tBodyAccMag-std()-mean"
35 "tGravityAccMag-mean()-mean"
36 "tGravityAccMag-std()-mean"
37 "tBodyAccJerkMag-mean()-mean"
38 "tBodyAccJerkMag-std()-mean"
39 "tBodyGyroMag-mean()-mean"
40 "tBodyGyroMag-std()-mean"
41 "tBodyGyroJerkMag-mean()-mean"
42 "tBodyGyroJerkMag-std()-mean"
43 "fBodyAcc-mean()-X-mean"
44 "fBodyAcc-mean()-Y-mean"
45 "fBodyAcc-mean()-Z-mean"
46 "fBodyAcc-std()-X-mean"
47 "fBodyAcc-std()-Y-mean"
48 "fBodyAcc-std()-Z-mean"
49 "fBodyAccJerk-mean()-X-mean"
50 "fBodyAccJerk-mean()-Y-mean"
51 "fBodyAccJerk-mean()-Z-mean"
52 "fBodyAccJerk-std()-X-mean"
53 "fBodyAccJerk-std()-Y-mean"
54 "fBodyAccJerk-std()-Z-mean"
55 "fBodyGyro-mean()-X-mean"
56 "fBodyGyro-mean()-Y-mean"
57 "fBodyGyro-mean()-Z-mean"
58 "fBodyGyro-std()-X-mean"
59 "fBodyGyro-std()-Y-mean"
60 "fBodyGyro-std()-Z-mean"
61 "fBodyAccMag-mean()-mean"
62 "fBodyAccMag-std()-mean"
63 "fBodyBodyAccJerkMag-mean()-mean"
64 "fBodyBodyAccJerkMag-std()-mean"
65 "fBodyBodyGyroMag-mean()-mean"
66 "fBodyBodyGyroMag-std()-mean"
67 "fBodyBodyGyroJerkMag-mean()-mean"
68 "fBodyBodyGyroJerkMag-std()-mean"

