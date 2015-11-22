# GetCleanDataProject
### Repository for Course Project in Getting and Cleaning Dat
This repository hosts the run_analysis.R, for processing data and a code book for metadata on the input and output files.

The dataset being used is: Human Activity Recognition Using Smartphones

### Files

When executing run_analysis.R , the set directory must be the same directory as the raw data files, with the Training and Test files in their own subfolders.

CodeBook.md contains metadata on the files, plus descriptions of processing done to clean and format the data files.

run_analysis.R  contains the code to process the data in the 5 required steps:
* 1. Merges the training and the test sets to create one data set.
* 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
* 3. Uses descriptive activity names to name the activities in the data set
* 4. Appropriately labels the data set with descriptive variable names. 
* 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each   activity and each subject.


run_analysis.R outputs a file called measure_avg.txt, which exists in the repository.
