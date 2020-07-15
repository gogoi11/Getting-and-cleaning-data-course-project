# Getting and cleaning data project

## Assignment

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 
1. A tidy data set as described below 
2. A link to a Github repository with your script for performing the analysis 
3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Files

This repo contains the following files:

* `CodeBook.md` describes the data structure, variables and transformations.

* `run_analysis.R` is an R script which creates the `tidy_data.txt` file. Executing this script should create the `tidy_data.txt` inside the `UCI HAR DATASET` folder created when the data was unzipped. The script downloads and unzips the data automatically.
\
R version 4.0.0 (2020-04-24)  
Packages used:
`Dplyr` version 1.0.0
* `tidy_data.txt` The data produced by the run_analysis.

## Script

R was used for all the transformations made and to create the `tidy_data.txt` file.

R version 4.0.0 (2020-04-24)

Packages used:
`Dplyr` version 1.0.0

1a. Data is downloaded and extracted in our working directory.

1b. The train and test dataset are created from the files `subject_train.txt`,`X_train.txt`,`y_train.txt`,`subject_test.txt`,`X_test.txt`,`y_test.txt`.

2. The train and test dataset were merged into the `full_data` dataset. As the number of columns was identical in both datasets, the merging of the dataset was done by stacking.

3. Named the variables using the `features.txt` file.

4. Extracted only the variables which contained the string `mean()` or `std()` and created the `filtered_data` dataset. **Comment: the variables which contained `MeanFrequency()` where not extracted. I assumed that `MeanFrequency()` was a different function.**

5. Gave the activity values descriptive names based on the `activity_labels.txt` file.

6. Gave descriptive variable names using the following criteria:
	* Removed the characters `()` and `-`.
	* All `t` and `f` that were at the start of the variable name were replaced by `TimeDomain` and `FrequencyDomain` respectively.
	* `Acc`, `Gyro`, `Mag`, `mean`, and `std` were replaced with `Accelerometer`, `Gyroscope`, `Magnitude`, `Mean`, and `StandardDeviation` respectively.
	
7. From the `filtered_data` dataset created a new tidy dataset `averaged_data` with the average of each variable for every subject and activity. A `tidy_data.txt` file is created using the `averaged_data`.  

