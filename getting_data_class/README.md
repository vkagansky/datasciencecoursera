### Assumplion: all needed files are located in the same directory.

### Per requirements:
### The code should have a file run_analysis.R in the main directory 
###  that can be run as long as the Samsung data is in your working directory

### The following files were  present in the working directory
### > dir()
### [1] "features.txt"      "run_analysis.R"    "subject_test.txt" 
### [4] "subject_train.txt" "X_test.txt"        "X_train.txt"      
### [7] "y_test.txt"        "y_train.txt"


### The run_analysis.R script has comments describitng the steps.  The steps are:
### 1. Merges the training and the test sets to create one data set.
### - read and merge files with observations
### - assign descriptive names to the valiables
### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
### 3-4. Uses descriptive activity names to name the activities in the data set
### - read and merge files
### - create a function converstong acrtivity codes into descriptive names
### - determine decriptive activity names
### - merge activity codes and activity names
### 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
### - load subjects
### - merge all data together
### - calculate averages
### - write resulting data set
### - produce readme.md file


### Here is list of variables in the final data set
* Subject
* Activity
* Activity Code
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
