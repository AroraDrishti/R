install.packages("class")
install.packages("gmodels")
install.packages("caret")
library(class)
library(gmodels)
library(ggplot2)
library(MASS)
library(caTools)

data(iris)

head(iris)
summary(iris)
str(iris)

sample <- sample.split(iris$Species, SplitRatio = 0.7)
train  <- subset(iris, sample==TRUE)
test   <- subset(iris, sample == FALSE)

trains <- scale(train[,1:4])
tests <- scale(test[,1:4])

knnm <- knn(train=trains, test=tests, cl=train$Species, k=3)

cm <- table(test$Species, knnm)
cm

cat("Accuracy:", (1-mean(knnm!=test$Species))*100)

CrossTable(x = test$Species, y = knnm,
           prop.chisq = FALSE)
