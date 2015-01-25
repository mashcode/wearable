---
title: "CodeBook"
output: 
---

## Variables

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array

## Data source

Main data page is http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Source data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip unzip it to working folder

## Files

Main 561-feature vector with time and frequency domain variables
 - 'train/X_train.txt': Training set.
 - 'test/X_test.txt': Test set.
Activity labels. 
 - 'train/y_train.txt': Training labels.
 - 'test/y_test.txt': Test labels.
Subject who carried out the experiment.
 - 'train/subject_train.txt': Each row identifies the subject who performed the activity
 - 'test/subject_test.txt'
List of all features.
 - 'features.txt'
Links the class labels with their activity name.
 - 'activity_labels.txt'

## Result

Combining subjects and activities (walking, laying etc) we have averages of all `mean` and `std` variables.

