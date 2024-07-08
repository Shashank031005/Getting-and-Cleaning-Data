#Unzip file and create a folder to place all the necessary files into, namely
#subject_test.txt, subject_train.txt, y_test.txt, y_train.txt, X_test.txt,
#X_train.txt, activity_labels.txt, features.txt
#Set working directory to this new location
#Load necessary packages (dplyr)
library(dplyr)

#Read test and train data into R
temp <- list.files(pattern = "\\.txt")
for (i in 1:length(temp)) {
         assign(temp[i], read.table(temp[i]))
}
#Merge data together using cbind (for the test files and then the train files), 
#and then rbind to combine the new data sets together
#Give columns unique names to prevent errors (such as V1 not being unique)
colnames(subject_test.txt) <- "Subject"
colnames(subject_train.txt) <- "Subject"
colnames(y_test.txt) <- "Activity"
colnames(y_train.txt) <- "Activity"
colnames(X_test.txt) <- features.txt$V2
colnames(X_train.txt) <- features.txt$V2
