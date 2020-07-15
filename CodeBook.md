# CodeBook for the `tidy_data.txt`

This is the Codebook for the `tidy_data.txt` dataset uploaded in this repository. 
For more information on how this data was obtained see the `README.Rmd` included in this repository as well.

## Data

The `tidy_data.txt` is a txt file with space-separated values. It contains 68 columns/variables and 180 rows. The first row includes the column names.

## Variables
There are 2 categorical variables, `subject` and `activity`, and 66 measurements variables.
The measurement variables were normalised to be between -1 and 1 before any transformations were made. More info in the `README.Rmd` file. No units were provided after normalisation. 
**(Comment: I believe that these values are unit-less because of the normalisation).**

* `subject`
Subject ID. Integer, range [1,30].  
\
* `activity`
Activity performed, factor with 6 levels:
	+ `WALKING`: subject was walking
	+ `WALKING_UPSTAIRS`: subject was walking upstairs
	+ `WALKING_DOWNSTAIRS`: subject was walking downstairs
	+ `SITTING`: subject was sitting
	+ `STANDING`: subject was standing
	+ `LAYING`: subject was laying  
\
* `TimeDomainBodyAccelerometerMean` Averaged mean for the time domain body acceleration in a given subject and activity on the 3 axis. Double, range [-1,1]
	+ `TimeDomainBodyAccelerometerMeanX`
	+ `TimeDomainBodyAccelerometerMeanY`
	+ `TimeDomainBodyAccelerometerMeanZ`  
\
* `TimeDomainBodyAccelerometerStandardDeviation` Averaged standard deviation for the time domain body acceleration in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `TimeDomainBodyAccelerometerStandardDeviationX`
	+ `TimeDomainBodyAccelerometerStandardDeviationY`
	+ `TimeDomainBodyAccelerometerStandardDeviationZ`  
\

* `TimeDomainGravityAccelerometerMean` Averaged mean for the time domain gravity acceleration in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `TimeDomainGravityAccelerometerMeanX`
	+ `TimeDomainGravityAccelerometerMeanY`
	+ `TimeDomainGravityAccelerometerMeanZ`  
\
* `TimeDomainGravityAccelerometerStandardDeviation` Averaged standard deviation for the time domain gravity acceleration in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `TimeDomainGravityAccelerometerStandardDeviationX`
	+ `TimeDomainGravityAccelerometerStandardDeviationY`
	+ `TimeDomainGravityAccelerometerStandardDeviationZ`  
\
* `TimeDomainBodyAccelerometerJerkMean` Averaged mean for the time domain body acceleration jerk in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `TimeDomainBodyAccelerometerJerkMeanX`
	+ `TimeDomainBodyAccelerometerJerkMeanY`
	+ `TimeDomainBodyAccelerometerJerkMeanZ`  
\	
* `TimeDomainBodyAccelerometerJerkStandardDeviation` Averaged standard deviation for the time domain body acceleration jerk in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `TimeDomainBodyAccelerometerJerkStandardDeviationX`
	+ `TimeDomainBodyAccelerometerJerkStandardDeviationY`
	+ `TimeDomainBodyAccelerometerJerkStandardDeviationZ`  
\	
* `TimeDomainBodyGyroscopeMean` Averaged mean for the time domain body angular velocity in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `TimeDomainBodyGyroscopeMeanX`
	+ `TimeDomainBodyGyroscopeMeanY`
	+ `TimeDomainBodyGyroscopeMeanZ`  
\	
* `TimeDomainBodyGyroscopeStandardDeviation` Averaged standard deviation for the time domain body angular velocity in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `TimeDomainBodyGyroscopeStandardDeviationX`
	+ `TimeDomainBodyGyroscopeStandardDeviationY`
	+ `TimeDomainBodyGyroscopeStandardDeviationZ`  
\	
* `TimeDomainBodyGyroscopeJerkMean` Averaged mean for the time domain body angular velocity jerk in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `TimeDomainBodyGyroscopeJerkMeanX`
	+ `TimeDomainBodyGyroscopeJerkMeanY`
	+ `TimeDomainBodyGyroscopeJerkMeanZ`  
\	
* `TimeDomainBodyGyroscopeJerkStandardDeviation` Averaged standard deviation for the time domain body angular velocity jerk in a given subject and activity on the 3 axis. Double, range [-1,1].
	+  `TimeDomainBodyGyroscopeJerkStandardDeviationX`
	+  `TimeDomainBodyGyroscopeJerkStandardDeviationY`
	+  `TimeDomainBodyGyroscopeJerkStandardDeviationZ`  
\	
* `TimeDomainBodyAccelerometerMagMean` Averaged mean for the time domain magnitude of body acceleration in a given subject and activity. Double, range [-1,1].  
\
* `TimeDomainBodyAccelerometerMagStandardDeviation` Averaged standard deviation for the time domain magnitude of body acceleration in a given subject and activity. Double, range [-1,1].  
\
*`TimeDomainGravityAccelerometerMagMean` Averaged mean for the time domain magnitude of gravity acceleration magnitude in a given subject and activity. Double, range [-1,1].  
\
* `TimeDomainGravityAccelerometerMagStandardDeviation`  Averaged standard deviation for the time domain magnitude of gravity acceleration in a given subject and activity. Double, range [-1,1].  
\
* `TimeDomainBodyAccelerometerJerkMagMean` Averaged mean for the time domain magnitude of body acceleration jerk in a given subject and activity. Double, range [-1,1].  
\
* `TimeDomainBodyAccelerometerJerkMagStandardDeviation` Averaged standard deviation for the time domain magnitude of body acceleration jerk in a given subject and activity. Double, range [-1,1].  
\
* `TimeDomainBodyGyroscopeMagMean` Averaged mean for the time domain magnitude of body angular velocity in a given subject and activity. Double, range [-1,1].  
\
* `TimeDomainBodyGyroscopeMagStandardDeviation` Averaged standard deviation for the time domain magnitude of body angular velocity in a given subject and activity. Double, range [-1,1].  
\
* `TimeDomainBodyGyroscopeJerkMagMean`  Averaged mean for the time domain magnitude of body angular velocity jerk in a given subject and activity. Double, range [-1,1].  
\
* `TimeDomainBodyGyroscopeJerkMagStandardDeviation` Averaged standard deviation for the time domain magnitude of body angular velocity jerk in a given subject and activity. Double, range [-1,1].  
\
* `FrequencyDomainBodyAccelerometerMean` Averaged mean for the Frequency domain body acceleration in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `FrequencyDomainBodyAccelerometerMeanX`
	+ `FrequencyDomainBodyAccelerometerMeanY`
	+ `FrequencyDomainBodyAccelerometerMeanZ`  
\	
* `FrequencyDomainBodyAccelerometerStandardDeviation` Averaged standard deviation for the Frequency domain body acceleration in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `FrequencyDomainBodyAccelerometerStandardDeviationX`
	+ `FrequencyDomainBodyAccelerometerStandardDeviationY`
	+ `FrequencyDomainBodyAccelerometerStandardDeviationZ`  
\	
* `FrequencyDomainBodyAccelerometerJerkMean` Averaged mean for the Frequency domain body acceleration jerk in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `FrequencyDomainBodyAccelerometerJerkMeanX`
	+ `FrequencyDomainBodyAccelerometerJerkMeanY`
	+ `FrequencyDomainBodyAccelerometerJerkMeanZ`  
\
* `FrequencyDomainBodyAccelerometerJerkStandardDeviation` Averaged standard devation for the Frequency domain body acceleration jerk in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `FrequencyDomainBodyAccelerometerJerkStandardDeviationX`
	+ `FrequencyDomainBodyAccelerometerJerkStandardDeviationY`
	+ `FrequencyDomainBodyAccelerometerJerkStandardDeviationZ`  
\
* `FrequencyDomainBodyGyroscopeMean` Averaged mean for the Frequency domain body angular velocity in a given subject and activity on the 3 axis. Double, range [-1,1].
	+ `FrequencyDomainBodyGyroscopeMeanX`
	+ `FrequencyDomainBodyGyroscopeMeanY`
	+ `FrequencyDomainBodyGyroscopeMeanZ`  
\
* `FrequencyDomainBodyGyroscopeStandardDeviation` Averaged standard deviation for the Frequency domain body angular velocity in a given subject and activity on the 3 axis. Double, range [-1,1].  
\
* `FrequencyDomainBodyAccelerometerMagMean` Averaged mean for the Frequency domain magnitude body acceleration for a given subject and actvity. Double, range [-1,1].  
\
* `FrequencyDomainBodyAccelerometerMagStandardDeviation` Averaged standard deviation for the Frequency domain magnitude body acceleration for a given subject and actvity. Double, range [-1,1].  
\
* `FrequencyDomainBodyBodyAccelerometerJerkMagMean` Averaged mean for the Frequency domain magnitude of body acceleration jerk for a given subject and activity. Double, range [-1,1]. **Comment: I assume "BodyBody" was a typo and meant "body".**  
\
* `FrequencyDomainBodyBodyAccelerometerJerkMagStandardDeviation` Averaged standard deviation for the Frequency domain magnitude of body acceleration jerk for a given subject and activity. Double, range [-1,1]. **Comment: I assumed "BodyBody" was a typo and meant "body".**  
\
* `FrequencyDomainBodyBodyGyroscopeMagMean` Averaged mean for the Frequency domain magnitude of body angular velocity for a given subject and activity. Double, range [-1,1]. **Comment: I assume "BodyBody" was a typo and meant "body".**  
\
* `FrequencyDomainBodyBodyGyroscopeMagStandardDeviation`  Averaged standard deviation for the Frequency domain magnitude of body angular velocity for a given subject and activity. Double, range [-1,1]. **Comment: I assume "BodyBody" was a typo and meant "body".**  
\ 
* `FrequencyDomainBodyBodyGyroscopeJerkMagMean` Averaged mean for the Frequency domain magnitude of body angular velocity jerk for a given subject and activity. Double, range [-1,1]. **Comment: I assume "BodyBody" was a typo and meant "body".**  
\
* `FrequencyDomainBodyBodyGyroscopeJerkMagStandardDeviation` Averaged standard deviation for the Frequency domain magnitude of body angular velocity jerk for a given subject and activity. Double, range [-1,1]. **Comment: I assume "BodyBody" was a typo and meant "body".**  
\

## Transformations
The transformations were applied on the data inside the zip file from `https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`. For more information on the data source see the `README.Rmd` file.  
\
The following steps were applied:
1. Merged the training and the test sets to create one data set, `full_data`
2. Extracted only the measurements on the `mean()` and `std()` for each measurement.
3. Used descriptive activity names to name the activities in the data set.
4. Appropriately labeled the data set with descriptive variable names.
5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.

For details on how the transformations were made see the `README.MD` and the `run_analysis.R` file.  
\

