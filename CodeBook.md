# CODE BOOK ON THE ANALYSIS PERFORMED ON EXPERIMENT DATA For ACTIVITIES PERFORMED WEARING A SMARTPHONE (SAMSUNG GALAXY S II)

The purpose of this analysis is to extracts mean and standard deviation of each measurement and produces an average of each measurement for each activity and each subject. The analysis is done on the experimeriment data for the activities performed wearing a smartphone (Samsung Galaxy S II).


### RAW DATA 
The raw data is downloaded from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data came from the experiments carried out by 30 volunteers (subjects), performing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

For more details on how the data are collected, refer to the readme file in dataset.

### TIDY DATA
The tidy data is produced through the run_analysis.R script. Refer to the CodeBook section below on the explanation of the variables. 


### TRANSFORMATION

The tidy data are transformed through the following processed:

1. Read the datasets. Note that the datasets are downloaded and unzipped in the subfolder 'UCI HAR Dataset' where the script is stored. The directory stucture of the datasets are kept as the original after unzipped. 

2. The following datasets are read:

      Datasets  | Description
      ----------------------------------------------------------------------------------------------------------------
      \UCI HAR Dataset\test\X_test.txt | This is the measurement of the test dataset
      \UCI HAR Dataset\test\Y_test.txt | This is the activities of the test dataset
      \UCI HAR Dataset\test\subject_test.txt | This is the subject that performs the activities of the test dataset
      
      \UCI HAR Dataset\train\X_train.txt | This is the measurement of the training datasets
      \UCI HAR Dataset\train\Y_train.txt | This is the activities of the training dataset
      \UCI HAR Dataset\train\X_test.txt  | This is the subject that performs the activities of the training dataset
      
      \UCI HAR Dataset\activity_labels.txt | This is the description of each activity code
      \UCI HAR Dataset\features.txt  | This is the description of each data in the X_test.txt and X_train.txt
      
3. Merge the measurement of the training data and the test datasets, the activities of both datasets and the subjects of the datasets

4. Assign the variable names for the each measurement extracted from the features.txt file

5. Combine the subject, activiy and the measurements into one dataset

6. Extracts only the measurements on the mean and standard deviation for each measurement, that is the measurements with variable names contain the word 'mean()' and 'std()'

7. Combine with the activity_labels.txt to get the descritive activity name for each observation

8. Give each variable name a more descriptive name.

9. Summarize the data to get the average for each measurement for each activity and each subject.

10. Save the data as a text file output.txt. The



### CODE BOOK

    
* Subject
    Volunteer who performed the activty
    1 .. 30, each number represents one volunteer
    
* Activity    
    Activty performed by the volunteer. 
    6 activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
    
* TimeBodyAccMean-X
    Mean value of the time domain body acceleration signals from accelerometer for X direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyAccMean-Y
    Mean value of the time domain body acceleration signals from accelerometer for Y direction (one of the 3 axial signals) of a particular subject and a particular activity
        
* TimeBodyAccMean-Z         
    Mean value of the time domain body acceleration signals from accelerometer for Y direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyAccStdDev-X
    Standard deviation value of the time domain body acceleration signals from accelerometer for X direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyAccStdDev-Y
    Standard deviation value of the time domain body acceleration signals from accelerometer for Y direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyAccStdDev-Z
    Standard deviation value of the time domain body acceleration signals from accelerometer for Z direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeGravityAccMean-X
    Mean value of the time domain gravity acceleration signals from accelerometer for X direction (one of the 3 axial signals) of a particular subject and a particular activity

* TimeGravityAccMean-Y
    Mean value of the time domain gravity acceleration signals from accelerometer for Y direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeGravityAccMean-Z
  Mean value of the time domain gravity acceleration signals from accelerometer for Z direction (one of the 3 axial signals) of a particular subject and a particular activity
  
* TimeGravityAccStdDev-X
  Standard deviation value of the time domain gravity acceleration signals from accelerometer for X direction (one of the 3 axial signals) of a particular subject and a particular activity

* TimeGravityAccStdDev-Y
  Standard deviation value of the time domain gravity acceleration signals from accelerometer for Y direction (one of the 3 axial signals) of a particular subject and a particular activity
  
* TimeGravityAccStdDev-Z
  Standard deviation value of the time domain gravity acceleration signals from accelerometer for Z direction (one of the 3 axial signals) of a particular subject and a particular activity

* TimeBodyAccJerkMean-X     
  Mean value of the jerk signal obtained from the time domain body acceleration signals from accelerometer for X direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyAccJerkMean-Y 
  Mean value of the jerk signal obtained from the time domain body acceleration signals from accelerometer for Y direction (one of the 3 axial signals) of a particular subject and a particular activity

* TimeBodyAccJerkMean-Z 
  Mean value of the jerk signal obtained from the time domain body acceleration signals from accelerometer for Z direction (one of the 3 axial signals) of a particular subject and a particular activity

* TimeBodyAccJerkStdDev-X 
  Standard deviation value of the jerk signal obtained from the time domain body acceleration signals from accelerometer for X direction (one of the 3 axial signals) of a particular subject and a particular activity
  
* TimeBodyAccJerkStdDev-Y  
  Standard deviation value of the jerk signal obtained from the time domain body acceleration signals from accelerometer for Y direction (one of the 3 axial signals) of a particular subject and a particular activity
  
* TimeBodyAccJerkStdDev-Z    
  Standard deviation value of the jerk signal obtained from the time domain body acceleration signals from accelerometer for Z direction (one of the 3 axial signals) of a particular subject and a particular activity
  
* TimeBodyGyroMean-X   
    Mean value of the time domain body acceleration signals from gyroscope for X direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroMean-Y   
    Mean value of the time domain body acceleration signals from gyroscope for Y direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroMean-Z   
    Mean value of the time domain body acceleration signals from gyroscope for Z direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroStdDev-X  
    Standard deviation value of the time domain body acceleration signals from gyroscope for X direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroStdDev-Y
    Standard deviation value of the time domain body acceleration signals from gyroscope for Y direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroStdDev-Z 
    Standard deviation value of the time domain body acceleration signals from gyroscope for Z direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroJerkMean-X  
    Mean value of the jerk signal obtained from the time domain body acceleration signals from gyroscope for X direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroJerkMean-Y 
    Mean value of the jerk signal obtained from the time domain body acceleration signals from gyroscope for Y direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroJerkMean-Z  
    Mean value of the jerk signal obtained from the time domain body acceleration signals from gyroscope for Z direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroJerkStdDev-X  
    Standard deviation value of the jerk signal obtained from the time domain body acceleration signals from gyroscope for X direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroJerkStdDev-Y 
    Standard deviation value of the jerk signal obtained from the time domain body acceleration signals from gyroscope for Y direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyGyroJerkStdDev-Z 
    Standard deviation value of the jerk signal obtained from the time domain body acceleration signals from gyroscope for Z direction (one of the 3 axial signals) of a particular subject and a particular activity
    
* TimeBodyAccMagMean
    Mean value of the magnitutude (calculated using Euclidean norm) of the time domain body acceleration signals from accelerometer of a particular subject and a particular activity
    
* TimeBodyAccMagStdDev  
    Standard deviation value of the magnitutude (calculated using Euclidean norm) of the time domain body acceleration signals from accelerometer of a particular subject and a particular activity

* TimeGravityAccMagMean   
    Mean value of the magnitutude (calculated using Euclidean norm) of the time domain gravity acceleration signals from accelerometer of a particular subject and a particular activity
    
* TimeGravityAccMagStdDev   
    Standard deviation value of the magnitutude (calculated using Euclidean norm) of the time domain gravity acceleration signals from accelerometer of a particular subject and a particular activity
    
* TimeBodyAccJerkMagMean 
    Mean value of the magnitutude (calculated using Euclidean norm) of the jerk signal obtained from the time domain body acceleration signals from accelerometer of a particular subject and a particular activity
    
* TimeBodyAccJerkMagStdDev   
    Standard deviation value of the magnitutude (calculated using Euclidean norm) of the jerk signal obtained from the time domain body acceleration signals from accelerometer of a particular subject and a particular activity
    
* TimeBodyGyroMagMean  
    Mean value of the magnitutude (calculated using Euclidean norm) of the time domain body acceleration signals from gyroscope of a particular subject and a particular activity
    
* TimeBodyGyroMagStdDev  
    Standard deviation value of the magnitutude (calculated using Euclidean norm) of the time domain body acceleration signals from gyroscope of a particular subject and a particular activity
    
* TimeBodyGyroJerkMagMean  
    Mean value of the magnitutude (calculated using Euclidean norm) of the jerk signal obtained from the time domain body acceleration signals from gyroscope of a particular subject and a particular activity
    
* TimeBodyGyroJerkMagStdDev 
    Standard deviation value of the magnitutude (calculated using Euclidean norm) of the jerk signal obtained from the time domain body acceleration signals from gyroscope of a particular subject and a particular activity
    
FftBodyAccMean-X

FftBodyAccMean-Y             
FftBodyAccMean-Z   

FftBodyAccStdDev-X          
FftBodyAccStdDev-Y        
FftBodyAccStdDev-Z 

FftBodyAccJerkMean-X        
FftBodyAccJerkMean-Y        
FftBodyAccJerkMean-Z    

FftBodyAccJerkStdDev-X     
FftBodyAccJerkStdDev-Y       
FftBodyAccJerkStdDev-Z   

FftBodyGyroMean-X            
"FftBodyGyroMean-Y 
"FftBodyGyroMean-Z  

FftBodyGyroStdDev-X          
FftBodyGyroStdDev-Y          
FftBodyGyroStdDev-Z  

FftBodyAccMagMean           
FftBodyAccMagStdDev         
FftBodyBodyAccJerkMagMean  

FftBodyBodyAccJerkMagStdDev 
FftBodyBodyGyroMagMean      
FftBodyBodyGyroMagStdDev 

FftBodyBodyGyroJerkMagMean   
FftBodyBodyGyroJerkMagStdDev





### INSTRUCTION LIST

Step 1 - download the dataset and unzip in the folder 'UCI HAR Dataset'. This should be a subfolder where the analysis script stored.

Step 2 - run analysis script "run_analsys.R"

Step 3 - find the output in the folder where analysis script stored. The filname is output.txt.





