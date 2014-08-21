CookBook
=============================

tidyData.txt

tidyData.txt contains the average of each variable for each activity and each subject. It was formed by a merged data set of which 70% is from the training data and 30% from the test data. 

It contains the following columns:
- Subject: id for 30 volunteers within an age bracket of 19-48 years.
- Activity: Six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by subject wearing a smartphone (Samsung Galaxy S II) on the waist
- mean() and std() of 
  + tBodyAcc-XYZ
  + tGravityAcc-XYZ
  + tBodyAccJerk-XYZ
  + tBodyGyro-XYZ
  + tBodyGyroJerk-XYZ
  + tBodyAccMag
  + tGravityAccMag
  + tBodyAccJerkMag
  + tBodyGyroMag
  + tBodyGyroJerkMag
  + fBodyAcc-XYZ
  + fBodyAccJerk-XYZ
  + fBodyGyro-XYZ
  + fBodyAccMag
  + fBodyAccJerkMag
  + fBodyGyroMag
  + fBodyGyroJerkMag
 
  
\* tAcc and tGyro indicate accelerometer and gyroscope 3-axial raw signals ('t' denotes time). The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

For more information, consult:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
