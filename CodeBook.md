Code book  for Getting and Cleaning Data course Project
=================

This document describes the input data and processing for `run_analysis.R`.

## Input Data
The 'Human Activity Data from Smartphones' raw data set is sourced from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Metadata information exists here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### Data set `measure_avg.txt`

The dataset `measure_avg.txt` is the result of cleaning and organizing data  measurements collected from the accelerometer and gyroscope from the Samsung Galaxy S smartphone utilized by 30 subjects. This subjects were measured on 6 physical activities.

The file `measure_avg.txt` structure is described below:

1. `subject` describes the subject that performed an activity. There are 30 subjects in this experiment.
2. `activity` describes the activity performed by the subject. There are six activites:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

Only the estimated mean and standard deviations, are extracted from the raw set resulting in 79 features.

