## CODEBOOK ON THE ANALYSIS OF THE DATA COLLECTED FOR THE ACTIVITIES PERFORMED WEARING A SMARTPHONE

The purpose of this analysis is to extract mean and standard deviation of each measurement and to produce an average of each measurement for each activity and each subject. The analysis is done on the experiment data for the activities performed wearing a smartphone (Samsung Galaxy S II).


### RAW DATA 
The raw data is downloaded from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data came from the experiments carried out by 30 volunteers (subjects), performing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. For more details on how the data are collected, refer to the readme file in dataset.

The following raw data are being used to perform the analysis:
* \UCI HAR Dataset\test\X_test.txt : the measurements of the test dataset.
* \UCI HAR Dataset\test\Y_test.txt : the activities of the test dataset.
* \UCI HAR Dataset\test\subject_test.txt : the subject that performs the activities of the test dataset.
* \UCI HAR Dataset\train\**X_train.txt : the measurement of the training datasets.
* \UCI HAR Dataset\train\**Y_train.txt : the activities of the training dataset.
* \UCI HAR Dataset\train\**X_test.txt : the subject that performs the activities of the training dataset.
* \UCI HAR Dataset\activity_labels.txt : the description of each activity code.
* \UCI HAR Dataset\features.txt : the description of each data in the X_test.txt and X_train.txt.

### TIDY DATA
The tidy data is produced through the 'run_analysis.R' script and stored in the 'output.txt' file. Refer to the CodeBook section below on the explanation of the variables of the tidy data. 


### TRANSFORMATION

The tidy data are transformed from the raw data through the following process:

1. Read the datasets as specified in the Raw Data section above. Take note that the datasets are downloaded and unzipped in the subfolder 'UCI HAR Dataset' where the analysis script is stored. The directory stucture of the datasets are kept as the original after unzipped. 
      
2. Merge the measurements of the training and the test datasets, the activities of both datasets and the subjects of both datasets.

3. Assign the variable names for the each measurement extracted from the 'features.txt' file.

4. Combine the subjects, activities and the measurements into one dataset.

5. Extracts only the measurements on the mean and standard deviation for each measurement, that is the measurements with variable names contain the word 'mean()' and 'std()'.

6. Combine with the data extracted from the 'activity_labels.txt' file to get the descriptive activity names for each observation.

7. Give each variable name a more descriptive name.

8. Summarize the data to get the average for each measurement for each activity and each subject.

9. Save the data as a text file. The file is saved as 'output.txt' in the same folder as the analysis script.


### CODEBOOK
   
* Subject       
  Volunteer who performed the activty.       
  
  1 to 30, each number represents one volunteer.
    
* Activity       
  Activty performed by the volunteer.       
  
  6 activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
    
* TimeBodyAccMean-X       
  The average of a particular subject and a particular activity performed on the mean value of the time domain body acceleration signals from an accelerometer for X direction (one of the 3 axial signals).      
  
  Numeric values range from between -1 to 1.
  
* TimeBodyAccMean-Y       
  The average of a particular subject and a particular activity performed on the mean value of the time domain body acceleration signals from an accelerometer for Y direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
  
* TimeBodyAccMean-Z      
  The average of a particular subject and a particular activity performed on the mean value of the time domain body acceleration signals from an accelerometer for Z direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
     
* TimeBodyAccStdDev-X      
  The average of a particular subject and a particular activity performed on the standard deviation value of the time domain body acceleration signals from an accelerometer for X direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
     
* TimeBodyAccStdDev-Y       
  The average of a particular subject and a particular activity performed on the standard deviation value of the time domain body acceleration signals from an accelerometer for Y direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
     
* TimeBodyAccStdDev-Z       
  The average of a particular subject and a particular activity performed on the standard deviation value of the time domain body acceleration signals from an accelerometer for Z direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1 in 14 decimal values.
     
* TimeGravityAccMean-X       
  The average of a particular subject and a particular activity performed on the mean value of the time domain gravity acceleration signals from an accelerometer for X direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
 
* TimeGravityAccMean-Y       
  The average of a particular subject and a particular activity performed on the mean value of the time domain gravity acceleration signals from an accelerometer for Y direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
    
* TimeGravityAccMean-Z  
  The average of a particular subject and a particular activity performed on the mean value of the time domain gravity acceleration signals from an accelerometer for Z direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
   
* TimeGravityAccStdDev-X  
  The average of a particular subject and a particular activity performed on the standard deviation value of the time domain gravity acceleration signals from an accelerometer for X direction (one of the 3 axial signals).     
  Numeric values range from between -1 to 1.
 
* TimeGravityAccStdDev-Y  
  The average of a particular subject and a particular activity performed on the standard deviation value of the time domain gravity acceleration signals from an accelerometer for Y direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
   
* TimeGravityAccStdDev-Z  
  The average of a particular subject and a particular activity performed on the standard deviation value of the time domain gravity acceleration signals from an accelerometer for Z direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
 
* TimeBodyAccJerkMean-X     
  The average of a particular subject and a particular activity performed on the mean value of the jerk signal obtained from the time domain body acceleration signals from an accelerometer for X direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
     
* TimeBodyAccJerkMean-Y     
  The average of a particular subject and a particular activity performed on the mean value of the jerk signal obtained from the time domain body acceleration signals from an accelerometer for Y direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
 
* TimeBodyAccJerkMean-Z     
  The average of a particular subject and a particular activity performed on the mean value of the jerk signal obtained from the time domain body acceleration signals from an accelerometer for Z direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
  
* TimeBodyAccJerkStdDev-X     
  The average of a particular subject and a particular activity performed on the standard deviation value of the jerk signal obtained from the time domain body acceleration signals from an accelerometer for X direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
  
* TimeBodyAccJerkStdDev-Y  
  The average of a particular subject and a particular activity performed on the standard deviation value of the jerk signal obtained from the time domain body acceleration signals from an accelerometer for Y direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
  
* TimeBodyAccJerkStdDev-Z    
  The average of a particular subject and a particular activity performed on the standard deviation value of the jerk signal obtained from the time domain body acceleration signals from an accelerometer for Z direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
  
* TimeBodyGyroMean-X   
  The average of a particular subject and a particular activity performed on the mean value of the time domain body acceleration signals from a gyroscope for X direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
  
* TimeBodyGyroMean-Y   
  The average of a particular subject and a particular activity performed on the mean value of the time domain body acceleration signals from a gyroscope for Y direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
  
* TimeBodyGyroMean-Z   
  The average of a particular subject and a particular activity performed on the mean value of the time domain body acceleration signals from a gyroscope for Z direction (one of the 3 axial signals).          
  
  Numeric values range from between -1 to 1.
  
* TimeBodyGyroStdDev-X       
  The average of a particular subject and a particular activity performed on the standard deviation value of the time domain body acceleration signals from a gyroscope for X direction (one of the 3 axial signals).          
  
  Numeric values range from between -1 to 1.
   
* TimeBodyGyroStdDev-Y     
  The average of a particular subject and a particular activity performed on the standard deviation value of the time domain body acceleration signals from a gyroscope for Y direction (one of the 3 axial signals).          
  
  Numeric values range from between -1 to 1.
  
* TimeBodyGyroStdDev-Z      
  The average of a particular subject and a particular activity performed on the standard deviation value of the time domain body acceleration signals from a gyroscope for Z direction (one of the 3 axial signals).          
  
  Numeric values range from between -1 to 1.
  
* TimeBodyGyroJerkMean-X       
  The average of a particular subject and a particular activity performed on the mean value of the jerk signal obtained from the time domain body acceleration signals from a gyroscope for X direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.     
  
* TimeBodyGyroJerkMean-Y      
  The average of a particular subject and a particular activity performed on the mean value of the jerk signal obtained from the time domain body acceleration signals from a gyroscope for Y direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.     
  
* TimeBodyGyroJerkMean-Z       
  The average of a particular subject and a particular activity performed on the mean value of the jerk signal obtained from the time domain body acceleration signals from a gyroscope for Z direction (one of the 3 axial signals).          
  
  Numeric values range from between -1 to 1.     
    
* TimeBodyGyroJerkStdDev-X       
  The average of a particular subject and a particular activity performed on the standard deviation value of the jerk signal obtained from the time domain body acceleration signals from a gyroscope for X direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.     
    
* TimeBodyGyroJerkStdDev-Y      
  The average of a particular subject and a particular activity performed on the standard deviation value of the jerk signal obtained from the time domain body acceleration signals from a gyroscope for Y direction (one of the 3 axial signals).     
  
  Numeric values range from between -1 to 1.
    
* TimeBodyGyroJerkStdDev-Z       
  The average of a particular subject and a particular activity performed on the standard deviation value of the jerk signal obtained from the time domain body acceleration signals from a gyroscope for Z direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
    
* TimeBodyAccMagMean      
  The average of a particular subject and a particular activity performed on the mean value of the magnitutude (calculated using Euclidean norm) of the time domain body acceleration signals from an accelerometer.
  
  Numeric values range from between -1 to 1.
    
* TimeBodyAccMagStdDev  
  The average of a particular subject and a particular activity performed on the standard deviation value of the magnitutude (calculated using Euclidean norm) of the time domain body acceleration signals from an accelerometer.
  
  Numeric values range from between -1 to 1.

* TimeGravityAccMagMean   
  The average of a particular subject and a particular activity performed on the mean value of the magnitutude (calculated using Euclidean norm) of the time domain gravity acceleration signals from an accelerometer.
  
  Numeric values range from between -1 to 1.
   
* TimeGravityAccMagStdDev   
  The average of a particular subject and a particular activity performed on the standard deviation value of the magnitutude (calculated using Euclidean norm) of the time domain gravity acceleration signals from an accelerometer.
  
  Numeric values range from between -1 to 1.
    
* TimeBodyAccJerkMagMean  
  The average of a particular subject and a particular activity performed on the mean value of the magnitutude (calculated using Euclidean norm) of the jerk signal obtained from the time domain body acceleration signals from an accelerometer.
  
  Numeric values range from between -1 to 1.
    
* TimeBodyAccJerkMagStdDev   
  The average of a particular subject and a particular activity performed on the standard deviation value of the magnitutude (calculated using Euclidean norm) of the jerk signal obtained from the time domain body acceleration signals from an accelerometer.
  
  Numeric values range from between -1 to 1.
    
* TimeBodyGyroMagMean  
  The average of a particular subject and a particular activity performed on the mean value of the magnitutude (calculated using Euclidean norm) of the time domain body acceleration signals from a gyroscope.
  
  Numeric values range from between -1 to 1.
    
* TimeBodyGyroMagStdDev  
  The average of a particular subject and a particular activity performed on the standard deviation value of the magnitutude (calculated using Euclidean norm) of the time domain body acceleration signals from gyroscope.
  
  Numeric values range from between -1 to 1.
    
* TimeBodyGyroJerkMagMean  
  The average of a particular subject and a particular activity performed on the mean value of the magnitutude (calculated using Euclidean norm) of the jerk signal obtained from the time domain body acceleration signals from gyroscope.
  
  Numeric values range from between -1 to 1.
    
* TimeBodyGyroJerkMagStdDev   
  The average of a particular subject and a particular activity performed on the standard deviation value of the magnitutude (calculated using Euclidean norm) of the jerk signal obtained from the time domain body acceleration signals from gyroscope.
  
  Numeric values range from between -1 to 1.
    
* FftBodyAccMean-X
  The average of a particular subject and a particular activity performed on the mean value of the Fourier Transform (FFT) applied on the body acceleration signals from an accelerometer for X direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
 
* FftBodyAccMean-Y
  The average of a particular subject and a particular activity performed on the mean value of the Fourier Transform (FFT) applied on the body acceleration signals from an accelerometer for Y direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyAccMean-Z   
  The average of a particular subject and a particular activity performed on the mean value of the Fourier Transform (FFT) applied on the body acceleration signals from an accelerometer for Z direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyAccStdDev-X     
  The average of a particular subject and a particular activity performed on the standard deviation value of the Fourier Transform (FFT) applied on the body acceleration signals from an accelerometer for X direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
 
* FftBodyAccStdDev-Y    
  The average of a particular subject and a particular activity performed on the standard deviation value of the Fourier Transform (FFT) applied on the body acceleration signals from an accelerometer for Y direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyAccStdDev-Z 
  The average of a particular subject and a particular activity performed on the standard deviation value of the Fourier Transform (FFT) applied on the body acceleration signals from an accelerometer for Z direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyAccJerkMean-X    
  The average of a particular subject and a particular activity performed on the mean value of the Fourier Transform (FFT) applied on the jerk signal obtained from the body acceleration signals from an accelerometer for X direction (one of the 3 axial signals).

  Numeric values range from between -1 to 1.
 
* FftBodyAccJerkMean-Y   
  The average of a particular subject and a particular activity performed on the mean value of the Fourier Transform (FFT) applied on the jerk signal obtained from the body acceleration signals from an accelerometer for Y direction (one of the 3 axial signals).

  Numeric values range from between -1 to 1.
 
* FftBodyAccJerkMean-Z    
  The average of a particular subject and a particular activity performed on the mean value of the Fourier Transform (FFT) applied on the jerk signal obtained from the body acceleration signals from an accelerometer for Z direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyAccJerkStdDev-X     
  The average of a particular subject and a particular activity performed on the standard deviation value of the Fourier Transform (FFT) applied on the the jerk signal obtained from body acceleration signals from an accelerometer for X direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyAccJerkStdDev-Y   
  The average of a particular subject and a particular activity performed on the standard deviation value of the Fourier Transform (FFT) applied on the the jerk signal obtained from body acceleration signals from an accelerometer for Y direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyAccJerkStdDev-Z   
  Standard deviation value of the Fourier Transform (FFT) applied on the the jerk signal obtained from body acceleration signals from an accelerometer for Z direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyGyroMean-X   
  The average of a particular subject and a particular activity performed on the mean value of the Fourier Transform (FFT) applied on the body acceleration signals from a gyroscope for X direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyGyroMean-Y 
  The average of a particular subject and a particular activity performed on the mean value of the Fourier Transform (FFT) applied on the body acceleration signals from a gyroscope for Y direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyGyroMean-Z  
  The average of a particular subject and a particular activity performed on the mean value of the Fourier Transform (FFT) applied on the body acceleration signals from a gyroscope for Y direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.

* FftBodyGyroStdDev-X   
  The average of a particular subject and a particular activity performed on the standard deviation value of the Fourier Transform (FFT) applied on the body acceleration signals from a gyroscope for X direction (one of the 3 axial signals) of a particular subject and a particular activity.
  
  Numeric values range from between -1 to 1.
  
* FftBodyGyroStdDev-Y   
  The average of a particular subject and a particular activity performed on the standard deviation value of the Fourier Transform (FFT) applied on the body acceleration signals from a gyroscope for Y direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyGyroStdDev-Z  
  The average of a particular subject and a particular activity performed on the standard deviation value of the Fourier Transform (FFT) applied on the body acceleration signals from a gyroscope for Z direction (one of the 3 axial signals).
  
  Numeric values range from between -1 to 1.
  
* FftBodyAccMagMean  
  The average of a particular subject and a particular activity performed on the mean value of the magnitutude (calculated using Euclidean norm) calculated from the Fourier Transform (FFT) applied on the body acceleration signals from an accelerometer.
  
  Numeric values range from between -1 to 1.
  
* FftBodyAccMagStdDev    
  The average of a particular subject and a particular activity performed on the standard deviation value of the magnitutude (calculated using Euclidean norm) calculated from the Fourier Transform (FFT) applied on the body acceleration signals from an accelerometer.
  
  Numeric values range from between -1 to 1.

* FftBodyBodyAccJerkMagMean  
  The average of a particular subject and a particular activity performed on the mean value of the magnitutude (calculated using Euclidean norm) calculated from the Fourier Transform (FFT) applied on the the jerk signal obtained from the body acceleration signals from an accelerometer.
  
  Numeric values range from between -1 to 1.

* FftBodyBodyAccJerkMagStdDev 
  The average of a particular subject and a particular activity performed on the standard deviation value of the magnitutude (calculated using Euclidean norm) calculated from the Fourier Transform (FFT) applied on the the jerk signal obtained from the body acceleration signals from an accelerometer.
  
  Numeric values range from between -1 to 1.

* FftBodyBodyGyroMagMean      
  The average of a particular subject and a particular activity performed on the mean value of the magnitutude (calculated using Euclidean norm) calculated from the Fourier Transform (FFT) applied on the body acceleration signals from a gyroscope.
  
  Numeric values range from between -1 to 1.
  
* FftBodyBodyGyroMagStdDev 
  The average of a particular subject and a particular activity performed on the standard deviation value of the magnitutude (calculated using Euclidean norm) calculated from the Fourier Transform (FFT) applied on the body acceleration signals from a gyroscope.
  
  Numeric values range from between -1 to 1.
 
* FftBodyBodyGyroJerkMagMean      
  The average of a particular subject and a particular activity performed on the mean value of the magnitutude (calculated using Euclidean norm) calculated from the Fourier Transform (FFT) applied on the the jerk signal obtained from the body acceleration signals from a gyroscope.
  
  Numeric values range from between -1 to 1.

* FftBodyBodyGyroJerkMagStdDev    
  The average of a particular subject and a particular activity performed on the standard deviation value of the magnitutude (calculated using Euclidean norm) calculated from the Fourier Transform (FFT) applied on the the jerk signal obtained from the body acceleration signals from a gyroscope.
  
  Numeric values range from between -1 to 1.


### INSTRUCTION LIST

Step 1 - download the dataset and unzip in the folder 'UCI HAR Dataset'. This should be a subfolder where the analysis script is stored.

Step 2 - run analysis script "run_analsys.R"

Step 3 - find the output in the folder where analysis script stored. The filname is output.txt.





