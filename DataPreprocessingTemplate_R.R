# Data Preprocessing
#R has most needed librarys
#Impoting the dataset
dataset = read.csv('Data.csv') # to excute dataset highlight and command enter
#dataset = dataset[,2:3]

#taking care of missing Data
#FIRST PARAMATER: is.na(dataset$Age) returns false if not missing
#SECOND PARAMETER: if predicate is true ave(dataset$Age, FUN = function(x) mean(x,na.rm = TRUE))
#THIRD PARAMETER: VALUE TO RETURN IF PARAMETER IS NOT MISSING
#dataset$Age =ifelse(is.na(dataset$Age),ave(dataset$Age, FUN = function(x) mean(x,na.rm = TRUE)),dataset$Age)
#dataset$Salary =ifelse(is.na(dataset$Salary),ave(dataset$Salary, FUN = function(x) mean(x,na.rm = TRUE)),dataset$Salary)
#encoding catagorical data
#dataset$Country = factor(dataset$Country,levels = c('France','Spain','Germany'),
#                                       labels = c(1,2,3))
#dataset$Purchased = factor(dataset$Purchased,levels = c('No','Yes'),
#                         labels = c(0,1))


#Splitting the dataset into the Training set and test set
#install.packages('caTools')
library(caTools) #activate
set.seed(123)
#prepareing the method that is going to do the data spit
split= sample.split(dataset$Purchased,SplitRatio = 0.8)
training_set = subset(dataset,split==TRUE) # > View(training_set)
test_set = subset(dataset,split==FALSE) # > View(test_set)

#Feature Scaling
# training_set[,2:3] = scale(training_set[,2:3])
# test_set[,2:3]=scale(test_set[,2:3])





