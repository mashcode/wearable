library(plyr)

x.train <- read.table("UCI HAR Dataset/train/X_train.txt")
y.train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x.test <- read.table("UCI HAR Dataset/test/X_test.txt")
y.test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")

x.ds <- rbind(x.train, x.test)
y.ds <- rbind(y.train, y.test)
subject.ds <- rbind(subject.train, subject.test)

features <- read.table("UCI HAR Dataset//features.txt")
mean.std.features <- grep("-(mean|std)\\(\\)", features[, 2])
x.ds <- x.ds[, mean.std.features]
names(x.ds) <- features[mean.std.features, 2]

activity <- read.table("UCI HAR Dataset//activity_labels.txt")
y.ds[, 1] <- activity[y.ds[, 1], 2]
names(y.ds) <- "activity"

names(subject.ds) <- "subject"
complete.ds <- cbind(x.ds, y.ds, subject.ds)

avg.tiny.data <- ddply(complete.ds, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(avg.tiny.data, "avg.tiny.data.txt", row.name=FALSE)