#Call the plyr package for the functions used in this script

  library(plyr)

# 1.
# Two data sets are provided for this analysis. A Training dataset and Test dataset
# Load and merge the two sets

  x_train <- read.table("train/X_train.txt")

  y_train <- read.table("train/y_train.txt")

  subject_train <- read.table("train/subject_train.txt")

  x_test <- read.table("test/X_test.txt")

  y_test <- read.table("test/y_test.txt")

  subject_test <- read.table("test/subject_test.txt")

# merge x and y sets using rbind
  x_merge <- rbind(x_train, x_test)

  y_merge <- rbind(y_train, y_test)

# merge subject data
  subject_merge <- rbind(subject_train, subject_test)

# 2.
# Standard Dev and Mean of each measurement

  features <- read.table("features.txt")

# Measure titles with mean or std dev
  getmeanstd <- grep("-(mean|std)\\(\\)", features[, 2])

# get columns
  x_merge <- x_merge[, getmeanstd]

  names(x_merge) <- features[getmeanstd, 2]
  
# 3.
# Activity Names
  activity_labels <- read.table("activity_labels.txt")

  y_merge[, 1] <- activity_labels[y_merge[, 1], 2]

  names(y_merge) <- "activity"

# 4.
# correct column names
  names(subject_merge) <- "subject"

# merge all data to one dataset
  all_merge <- cbind(x_merge, y_merge, subject_merge)

# 5.
# second tidy dataset with averages of all measures

# 66 <- 68 columns but last two (activity & subject)
  get_avg <- ddply(all_merge, .(subject, activity), function(x) colMeans(x[, 1:66]))

  write.table(get_avg, "measure_avg.txt", row.name=FALSE)

