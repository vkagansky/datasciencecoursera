# Assumplion: all needed files are located in the same directory.

#Per requirements:
#"The code should have a file run_analysis.R in the main directory 
# that can be run as long as the Samsung data is in your working directory

#> dir()
#[1] "features.txt"      "run_analysis.R"    "subject_test.txt" 
#[4] "subject_train.txt" "X_test.txt"        "X_train.txt"      
#[7] "y_test.txt"        "y_train.txt"


# Code that id not needed to produce data sets, but useful for
# debugging left in the script, but is commented out


###############
# 1. Merges the training and the test sets to create one data set.
###############

# read and merge files with observations

X_test <- read.table ( "X_test.txt")
X_train <- read.table ( "X_train.txt")
X <- rbind(X_test, X_train)
#dim(X)

# assign descriptive names to the valiables

features.tab <- read.table ( "features.txt")
features.tab.transp <-t(features.tab[2])
features.vec <- as.vector(features.tab.transp)
names(X) <- features.vec
#names(X)



#########################
# 2. Extracts only the measurements on the mean 
#  and standard deviation for each measurement. 
#########################

i <- grep("std", names(X)) 
#length(i)
j <- grep("mean()", names(X), fixed=TRUE)
#length(j)
ij <-sort(union(i,j))
#ij
#names (X)[ij]

x.subset <-X[,ij]
# dim(x.subset)
# names(x.subset)


########################
# 3-4. Uses descriptive activity names to name the activities in the data set
#######################

# read and merge files

Y_test <- read.table ( "Y_test.txt")
Y_train <- read.table ( "Y_train.txt")
Y <- rbind(Y_test, Y_train)

# dim(Y)
# head(Y[,1])

# function converstong acrtivity codes into descriptive names
position <- function (n) (
  if (n== 1) {"WALKING"}
  else if (n== 2) {"WALKING_UPSTAIRS"}
  else if (n== 3) {"WALKING_DOWNSTAIRS"}
  else if (n== 4) {"SITTING"}
  else if (n== 5) {"STANDING"}
  else { "LAYING"}
)



# determine decriptive activity names

z <- vector()

for (k in 1:10299) {
z <- append(z,position(Y[k,1]))
}


#dim(Y)

Z <- t((as.table(t(z)))) 
#dim(Z)

# merge activity codes and activity names

posit <- cbind(Y,Z) [,c(1,4)]
names(posit) <- c ("Activity Code", "Activity")
#head (posit)



########################
# 5. Creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject. 
########################

# load subjects

subj_test <-  read.table ( "subject_test.txt")
subj_train <-  read.table ( "subject_train.txt")
subj <- rbind(subj_test, subj_train)
names(subj) <- c("Subject")
#head(subj)
#dim(subj)



# merge all data together

full.table <- cbind(subj, posit, x.subset)

#dim(full.table)
#head(full.table)
#names(full.table)


# calculate averages


aggr_df <-aggregate(. ~ Subject + Activity, data = full.table, mean)

#names(aggr_df)
#head (aggr_df)
#dim (aggr_df)


# write resulting data set
# the file is tab-separated

write.table (aggr_df, "averages.txt", sep="\t")

#the same in csv format: may be easier to read
write.table (aggr_df, "averages.csv", sep=",")


# produce readme.md file


datanames <- names(aggr_df)
outputlines <- paste("* ",datanames , sep="")
write.table(outputlines,file="readme.md", quote = FALSE, col.names=FALSE, row.names=FALSE)

# readme.md file was edited to describr how the script works

