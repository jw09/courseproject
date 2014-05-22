run_analysis <- function() {
        
        ## 1. Merges the training and the test sets to create one data set.
        
        testx <- read.csv(paste0(getwd(), "/UCI HAR Dataset/test/X_test.txt"),          
                 header=FALSE, sep="",colClasses = "character")
        testy <- read.csv(paste0(getwd(), "/UCI HAR Dataset/test/Y_test.txt"),         
                 header=FALSE, sep="",colClasses = "character")
        trainx <- read.csv(paste0(getwd(), "/UCI HAR Dataset/train/X_train.txt"),
                  header=FALSE, sep="",colClasses = "character")
        trainy <- read.csv(paste0(getwd(), "/UCI HAR Dataset/train/Y_train.txt"),
                  header=FALSE, sep="",colClasses = "character")
        features <- read.csv(paste0(getwd(), "/UCI HAR Dataset/features.txt"),
                             header=FALSE, sep="",colClasses = "character")
        sub1 <- read.csv(paste0(getwd(),"/UCI HAR Dataset/test/subject_test.txt"),
                             header=FALSE, sep="",colClasses = "character")
        sub2 <- read.csv(paste0(getwd(),"/UCI HAR Dataset/train/subject_train.txt"),
                            header=FALSE, sep="",colClasses = "character")

        all.x <- rbind(testx, trainx)
        all.y <- rbind(testy, trainy)
        all.subjuect <- rbind(sub1, sub2)
        colnames(all.subjuect) <- "subject"
        colnames(all.y) <- "activities"
        colnames(all.x) <- features$V2
        data <- cbind(all.subjuect, all.y, all.x)
        
        ## 2. Extracts the measurements (3-axial raw signals tAcc-XYZ from 
        ## accelerometer and tGyro-XYZ from gyroscope ) on the mean and standard 
        ## deviation for each measurement. 

        subdata <- data[,c(1:8, 43:48, 123:128)]
        
        ## 3. Uses descriptive activity names to name the activities in the data set
        ## 4. Appropriately labels the data set with descriptive activity names.
        labels <- read.csv(paste0(getwd(),"/UCI HAR Dataset/activity_labels.txt"),
                           header=FALSE, sep="",colClasses = "character") 
        for(i in 1:6){
                subdata$activities <- sub(i, labels[i,2], subdata$activities)
        }
        
        n1 <- gsub("-", "", names(subdata))
        n2 <- sub("\\()", "", n1)
        colnames(subdata) <- n2
        
        ## 5. Creates a second, independent tidy data set with the average of each 
        ## variable for each activity and each subject. 
        
        library(reshape2)
        subdata$varnames <- rownames(subdata)
        datamelt <- melt(subdata,id=c("subject","activities"), measure.vars=colnames(subdata[,3:20]))
        datamelt[,1] <- as.numeric(datamelt[,1])
        datamelt[,4] <- as.numeric(datamelt[,4])
        sumdata <- dcast(datamelt, subject+activities ~variable, mean)
        write.csv(sumdata, paste0(getwd(),"/result.csv"))
}