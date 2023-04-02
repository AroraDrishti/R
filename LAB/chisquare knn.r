# Chi-square Test
library(MASS)
data("Cars93")

carsdata <- data.frame(Cars93$AirBags, Cars93$Type)
print(carsdata)

tabledata <- table(Cars93$AirBags, Cars93$Type)
print(chisq.test(tabledata))


# K-Nearest Neighbors
df <- data(iris)
head(iris)

# splitting train data 
ran <- sample(1:nrow(iris), 0.9*nrow(iris))

# normalization
nor <- function(x) { (x-min(x))/(max(x)-min(x)) }

# converting to dataframe
iris_norm <- as.data.frame(lapply(iris[,c(1,2,3,4)], nor))

# train and test dataset
iris_train <- iris_norm[ran,]
iris_test <- iris_norm[-ran,]
iris_target_category <- iris[ran,5]
iris_test_category <- iris[-ran,5]

# model training with k = 13
pr <- knn(iris_train, iris_test, cl = iris_target_category, k = 4)
tab <- table(pr,iris_test_category)

# accuracy score
accuracy <- function(x) {sum(diag(x)/sum(rowSums(x)))*100}
accuracy(tab)

