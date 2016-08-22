# CodeBook

This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Information about the original experiments

The original experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See '_row_data/features_info.txt' for more details.

For each record it was provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment.

# Information about the final dataset provided

The final dataset extracts only the measurements on the mean and standard deviation for each measurement from the previous datasets

* Identifiers
    * subject - The ID of the test subject : numeric
    * activity - The type of activity performed when the corresponding measurements were taken : character
        * WALKING - subject was walking during the test
        * WALKING_UPSTAIRS -  subject was walking up a staircase during the test
        * WALKING_DOWNSTAIRS - subject was walking down a staircase during the test
        * SITTING -  subject was sitting during the test
        * STANDING - subject was standing during the test
        * LAYING - subject was laying down during the test
* Measurements - all are numeric variables
    * timeBodyAccelerometer_mean_X                    : num
    * timeBodyAccelerometer_mean_Y                    : num
    * timeBodyAccelerometer_mean_Z                    : num
    * timeBodyAccelerometer_std_X                     : num
    * timeBodyAccelerometer_std_Y                     : num
    * timeBodyAccelerometer_std_Z                     : num
    * timeGravityAccelerometer_mean_X                 : num
    * timeGravityAccelerometer_mean_Y                 : num
    * timeGravityAccelerometer_mean_Z                 : num
    * timeGravityAccelerometer_std_X                  : num
    * timeGravityAccelerometer_std_Y                  : num
    * timeGravityAccelerometer_std_Z                  : num
    * timeBodyAccelerometerJerk_mean_X                : num
    * timeBodyAccelerometerJerk_mean_Y                : num
    * timeBodyAccelerometerJerk_mean_Z                : num
    * timeBodyAccelerometerJerk_std_X                 : num
    * timeBodyAccelerometerJerk_std_Y                 : num
    * timeBodyAccelerometerJerk_std_Z                 : num
    * timeBodyGyroscope_mean_X                        : num
    * timeBodyGyroscope_mean_Y                        : num
    * timeBodyGyroscope_mean_Z                        : num
    * timeBodyGyroscope_std_X                         : num
    * timeBodyGyroscope_std_Y                         : num
    * timeBodyGyroscope_std_Z                         : num
    * timeBodyGyroscopeJerk_mean_X                    : num
    * timeBodyGyroscopeJerk_mean_Y                    : num
    * timeBodyGyroscopeJerk_mean_Z                    : num
    * timeBodyGyroscopeJerk_std_X                     : num
    * timeBodyGyroscopeJerk_std_Y                     : num
    * timeBodyGyroscopeJerk_std_Z                     : num
    * timeBodyAccelerometerMagnitude_mean             : num
    * timeBodyAccelerometerMagnitude_std              : num
    * timeGravityAccelerometerMagnitude_mean          : num
    * timeGravityAccelerometerMagnitude_std           : num
    * timeBodyAccelerometerJerkMagnitude_mean         : num
    * timeBodyAccelerometerJerkMagnitude_std          : num
    * timeBodyGyroscopeMagnitude_mean                 : num
    * timeBodyGyroscopeMagnitude_std                  : num
    * timeBodyGyroscopeJerkMagnitude_mean             : num
    * timeBodyGyroscopeJerkMagnitude_std              : num
    * frequencyBodyAccelerometer_mean_X               : num
    * frequencyBodyAccelerometer_mean_Y               : num
    * frequencyBodyAccelerometer_mean_Z               : num
    * frequencyBodyAccelerometer_std_X                : num
    * frequencyBodyAccelerometer_std_Y                : num
    * frequencyBodyAccelerometer_std_Z                : num
    * frequencyBodyAccelerometer_meanFreq_X           : num
    * frequencyBodyAccelerometer_meanFreq_Y           : num
    * frequencyBodyAccelerometer_meanFreq_Z           : num
    * frequencyBodyAccelerometerJerk_mean_X           : num
    * frequencyBodyAccelerometerJerk_mean_Y           : num
    * frequencyBodyAccelerometerJerk_mean_Z           : num
    * frequencyBodyAccelerometerJerk_std_X            : num
    * frequencyBodyAccelerometerJerk_std_Y            : num
    * frequencyBodyAccelerometerJerk_std_Z            : num
    * frequencyBodyAccelerometerJerk_meanFreq_X       : num
    * frequencyBodyAccelerometerJerk_meanFreq_Y       : num
    * frequencyBodyAccelerometerJerk_meanFreq_Z       : num
    * frequencyBodyGyroscope_mean_X                   : num
    * frequencyBodyGyroscope_mean_Y                   : num
    * frequencyBodyGyroscope_mean_Z                   : num
    * frequencyBodyGyroscope_std_X                    : num
    * frequencyBodyGyroscope_std_Y                    : num
    * frequencyBodyGyroscope_std_Z                    : num
    * frequencyBodyGyroscope_meanFreq_X               : num
    * frequencyBodyGyroscope_meanFreq_Y               : num
    * frequencyBodyGyroscope_meanFreq_Z               : num
    * frequencyBodyAccelerometerMagnitude_mean        : num
    * frequencyBodyAccelerometerMagnitude_std         : num
    * frequencyBodyAccelerometerMagnitude_meanFreq    : num
    * frequencyBodyAccelerometerJerkMagnitude_mean    : num
    * frequencyBodyAccelerometerJerkMagnitude_std     : num
    * frequencyBodyAccelerometerJerkMagnitude_meanFreq: num
    * frequencyBodyGyroscopeMagnitude_mean            : num
    * frequencyBodyGyroscopeMagnitude_std             : num
    * frequencyBodyGyroscopeMagnitude_meanFreq        : num
    * frequencyBodyGyroscopeJerkMagnitude_mean        : num
    * frequencyBodyGyroscopeJerkMagnitude_std         : num
    * frequencyBodyGyroscopeJerkMagnitude_meanFreq    : num

# Actions inside the run_script.R

1. Changes the working directory to point the current folder
2. Adds helpers functions used later on in order to simplify code and increse legibility
3. Imports necessary packages if not present and installes them
4. Downloads the row data if it does not already exist into the working directory
5. Reads the activity and feature information
6. Reads both the training and test datasets
8. Extracts only the measurements on the mean and standard deviation for each observation of the training and test datasets
8. Merges both the training and the test datasets to create one data set
9. Simplifies and changes column names for the new data set
9. Replaces activity number reference with the appropiate activity name
10. Creates a tidy dataset that consists of the average value of each variable for each subject and activity pair.
11. Saves tidy data into a new file at the working directory root

All this steps are commented inside the script following by the code that execute every action
