# Study design

A full description of the original data set and how it was collected can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The tidy data set generated from the original data is a 180 x 68 data frame of the means of the mean and standard deviation measurements of each variable for each subject and each activity. Rows represent different subject/activity pairs and columns report the means of the variables for each pair.

# Code book

Note: Only minimal changes were made to the original variable names to help keep track of variables from beginning to end. Any characters that may cause problems within R (parentheses, “()”; dashes, “-“) were removed, or replaced (by underscores, “_”) to preserve readability.

Column | Variable name | Variable description | Values or explanation
------ | ------------- | -------------------- | ---------------------
1 | subject | subject ID | value from 1 to 30
2 | activity | activity performed while wearing smartphone on waist | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3 | tBodyAcc_mean_X | mean of the time domain signal of the body acceleration in the X axis direction (in XYZ space) | normalized value from -1 to 1
4 | tBodyAcc_mean_Y | mean of the time domain signal of the body acceleration in the Y axis direction (in XYZ space) | normalized value from -1 to 1
5 | tBodyAcc_mean_Z | mean of the time domain signal of the body acceleration in the Z axis direction (in XYZ space) | normalized value from -1 to 1
6 | tBodyAcc_std_X | standard deviation of the time domain signal of the body acceleration in the X axis direction (in XYZ space) | normalized value from -1 to 1
7 | tBodyAcc_std_Y | standard deviation of the time domain signal of the body acceleration in the Y axis direction (in XYZ space) | normalized value from -1 to 1
8 | tBodyAcc_std_Z | standard deviation of the time domain signal of the body acceleration in the Z axis direction (in XYZ space) | normalized value from -1 to 1
9 | tGravityAcc_mean_X | mean of the time domain signal of the gravity acceleration in the X axis direction (in XYZ space) | normalized value from -1 to 1
10 | tGravityAcc_mean_Y | mean of the time domain signal of the gravity acceleration in the Y axis direction (in XYZ space) | normalized value from -1 to 1
11 | tGravityAcc_mean_Z | mean of the time domain signal of the gravity acceleration in the Z axis direction (in XYZ space) | normalized value from -1 to 1
12 | tGravityAcc_std_X | standard deviation of the time domain signal of the gravity acceleration in the X axis direction (in XYZ space) | normalized value from -1 to 1
13 | tGravityAcc_std_Y | standard deviation of the time domain signal of the gravity acceleration in the Y axis direction (in XYZ space) | normalized value from -1 to 1
14 | tGravityAcc_std_Z | standard deviation of the time domain signal of the gravity acceleration in the Z axis direction (in XYZ space) | normalized value from -1 to 1
15 | tBodyAccJerk_mean_X | mean of the time domain signal of the body acceleration-derived Jerk in the X axis direction (in XYZ space) | normalized value from -1 to 1
16 | tBodyAccJerk_mean_Y | mean of the time domain signal of the body acceleration-derived Jerk in the Y axis direction (in XYZ space) | normalized value from -1 to 1
17 | tBodyAccJerk_mean_Z | mean of the time domain signal of the body acceleration-derived Jerk in the Z axis direction (in XYZ space) | normalized value from -1 to 1
18 | tBodyAccJerk_std_X | standard deviation of the time domain signal of the body acceleration-derived Jerk in the X axis direction (in XYZ space) | normalized value from -1 to 1
19 | tBodyAccJerk_std_Y | standard deviation of the time domain signal of the body acceleration-derived Jerk in the Y axis direction (in XYZ space) | normalized value from -1 to 1
20 | tBodyAccJerk_std_Z | standard deviation of the time domain signal of the body acceleration-derived Jerk in the Z axis direction (in XYZ space) | normalized value from -1 to 1
21 | tBodyGyro_mean_X | mean of the time domain signal of the body angular velocity in the X axis direction (in XYZ space) | normalized value from -1 to 1
22 | tBodyGyro_mean_Y | mean of the time domain signal of the body angular velocity in the Y axis direction (in XYZ space) | normalized value from -1 to 1
23 | tBodyGyro_mean_Z | mean of the time domain signal of the body angular velocity in the Z axis direction (in XYZ space) | normalized value from -1 to 1
24 | tBodyGyro_std_X | standard deviation of the time domain signal of the body angular velocity in the X axis direction (in XYZ space) | normalized value from -1 to 1
25 | tBodyGyro_std_Y | standard deviation of the time domain signal of the body angular velocity in the Y axis direction (in XYZ space) | normalized value from -1 to 1
26 | tBodyGyro_std_Z | standard deviation of the time domain signal of the body angular velocity in the Z axis direction (in XYZ space) | normalized value from -1 to 1
27 | tBodyGyroJerk_mean_X | mean of the time domain signal of the body angular velocity-derived Jerk in the X axis direction (in XYZ space) | normalized value from -1 to 1
28 | tBodyGyroJerk_mean_Y | mean of the time domain signal of the body angular velocity-derived Jerk in the Y axis direction (in XYZ space) | normalized value from -1 to 1
29 | tBodyGyroJerk_mean_Z | mean of the time domain signal of the body angular velocity-derived Jerk in the Z axis direction (in XYZ space) | normalized value from -1 to 1
30 | tBodyGyroJerk_std_X | standard deviation of the time domain signal of the body angular velocity-derived Jerk in the X axis direction (in XYZ space) | normalized value from -1 to 1
31 | tBodyGyroJerk_std_Y | standard deviation of the time domain signal of the body angular velocity-derived Jerk in the Y axis direction (in XYZ space) | normalized value from -1 to 1
32 | tBodyGyroJerk_std_Z | standard deviation of the time domain signal of the body angular velocity-derived Jerk in the Z axis direction (in XYZ space) | normalized value from -1 to 1
33 | tBodyAccMag_mean | mean of the magnitude of the time domain signal of the body acceleration in XYZ space | normalized value from -1 to 1
34 | tBodyAccMag_std | standard deviation of the magnitude of the time domain signal of the body acceleration in XYZ space | normalized value from -1 to 1
35 | tGravityAccMag_mean | mean of the magnitude of the time domain signal of the gravity acceleration in XYZ space | normalized value from -1 to 1
36 | tGravityAccMag_std | standard deviation of the magnitude of the time domain signal of the gravity acceleration in XYZ space | normalized value from -1 to 1
37 | tBodyAccJerkMag_mean | mean of the magnitude of the time domain signal of the body acceleration-derived Jerk in XYZ space | normalized value from -1 to 1
38 | tBodyAccJerkMag_std | standard deviation of the magnitude of the time domain signal of the body acceleration-derived Jerk in XYZ space | normalized value from -1 to 1
39 | tBodyGyroMag_mean | mean of the magnitude of the time domain signal of the body angular velocity in XYZ space | normalized value from -1 to 1
40 | tBodyGyroMag_std | standard deviation of the magnitude of the time domain signal of the body angular velocity in XYZ space | normalized value from -1 to 1
41 | tBodyGyroJerkMag_mean | mean of the magnitude of the time domain signal of the body angular velocity-derived Jerk in XYZ space | normalized value from -1 to 1
42 | tBodyGyroJerkMag_std | standard deviation of the magnitude of the time domain signal of the body angular velocity-derived Jerk in XYZ space | normalized value from -1 to 1
43 | fBodyAcc_mean_X | mean of the frequency domain signal of the body acceleration in the X axis direction (in XYZ space) | normalized value from -1 to 1
44 | fBodyAcc_mean_Y | mean of the frequency domain signal of the body acceleration in the Y axis direction (in XYZ space) | normalized value from -1 to 1
45 | fBodyAcc_mean_Z | mean of the frequency domain signal of the body acceleration in the Z axis direction (in XYZ space) | normalized value from -1 to 1
46 | fBodyAcc_std_X | standard deviation of the frequency domain signal of the body acceleration in the X axis direction (in XYZ space) | normalized value from -1 to 1
47 | fBodyAcc_std_Y | standard deviation of the frequency domain signal of the body acceleration in the Y axis direction (in XYZ space) | normalized value from -1 to 1
48 | fBodyAcc_std_Z | standard deviation of the frequency domain signal of the body acceleration in the Z axis direction (in XYZ space) | normalized value from -1 to 1
49 | fBodyAccJerk_mean_X | mean of the frequency domain signal of the body acceleration-derived Jerk in the X axis direction (in XYZ space) | normalized value from -1 to 1
50 | fBodyAccJerk_mean_Y | mean of the frequency domain signal of the body acceleration-derived Jerk in the Y axis direction (in XYZ space) | normalized value from -1 to 1
51 | fBodyAccJerk_mean_Z | mean of the frequency domain signal of the body acceleration-derived Jerk in the Z axis direction (in XYZ space) | normalized value from -1 to 1
52 | fBodyAccJerk_std_X | standard deviation of the frequency domain signal of the body acceleration-derived Jerk in the X axis direction (in XYZ space) | normalized value from -1 to 1
53 | fBodyAccJerk_std_Y | standard deviation of the frequency domain signal of the body acceleration-derived Jerk in the Y axis direction (in XYZ space) | normalized value from -1 to 1
54 | fBodyAccJerk_std_Z | standard deviation of the frequency domain signal of the body acceleration-derived Jerk in the Z axis direction (in XYZ space) | normalized value from -1 to 1
55 | fBodyGyro_mean_X | mean of the frequency domain signal of the body angular velocity in the X axis direction (in XYZ space) | normalized value from -1 to 1
56 | fBodyGyro_mean_Y | mean of the frequency domain signal of the body angular velocity in the Y axis direction (in XYZ space) | normalized value from -1 to 1
57 | fBodyGyro_mean_Z | mean of the frequency domain signal of the body angular velocity in the Z axis direction (in XYZ space) | normalized value from -1 to 1
58 | fBodyGyro_std_X | standard deviation of the frequency domain signal of the body angular velocity in the X axis direction (in XYZ space) | normalized value from -1 to 1
59 | fBodyGyro_std_Y | standard deviation of the frequency domain signal of the body angular velocity in the Y axis direction (in XYZ space) | normalized value from -1 to 1
60 | fBodyGyro_std_Z | standard deviation of the frequency domain signal of the body angular velocity in the Z axis direction (in XYZ space) | normalized value from -1 to 1
61 | fBodyAccMag_mean | mean of the magnitude of the frequency domain signal of the body acceleration in XYZ space | normalized value from -1 to 1
62 | fBodyAccMag_std | standard deviation of the magnitude of the frequency domain signal of the body acceleration in XYZ space | normalized value from -1 to 1
63 | fBodyAccJerkMag_mean | mean of the magnitude of the frequency domain signal of the body acceleration-derived Jerk in XYZ space | normalized value from -1 to 1
64 | fBodyAccJerkMag_std | standard deviation of the magnitude of the frequency domain signal of the body acceleration-derived Jerk in XYZ space | normalized value from -1 to 1
65 | fBodyGyroMag_mean | mean of the magnitude of the frequency domain signal of the body angular velocity in XYZ space | normalized value from -1 to 1
66 | fBodyGyroMag_std | standard deviation of the magnitude of the frequency domain signal of the body angular velocity in XYZ space | normalized value from -1 to 1
67 | fBodyGyroJerkMag_mean | mean of the magnitude of the frequency domain signal of the body angular velocity-derived Jerk in XYZ space | normalized value from -1 to 1
68 | fBodyGyroJerkMag_std | standard deviation of the magnitude of the frequency domain signal of the body angular velocity-derived Jerk in XYZ space | normalized value from -1 to 1