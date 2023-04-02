# load titanic dataset from kaggle train and test both
# this dataset contains historical records of all the passengers onboard
#
# x <- read.csv("C:\\Users\\HP\\Desktop\\test.csv")
#
# set directory
#
# read titanic.csv as df
# header=True sep=","
#
# view(data)
#
# head and tail on data
#
# check out the names of all the variables in dataset
#
# check structure of dataset
#
# check summary
#
# as.factor for categorical to numerical features
#
# 1. what was the survival rate
#    how many people did survive?
#    use geom_bars
#
# 2. no of passengers vs survived graph
#
# 3. survival rate by gender
#    use table()
#
# 4. survival rate on the basis of class of tickets
#
# 5. survival rate on the basis of age

#6. survival rate on the basis of class of tickets, age and gender


print(getwd())
setwd("C:\\Users\\HP\\Desktop")
print(getwd())

testdf <- read.csv("test.csv", header=TRUE, sep=",") 
testdf
traindf <- read.csv("train.csv", header=TRUE, sep=",")
traindf

head(traindf)
tail(traindf)
colnames(traindf)
dim(traindf)
nrow(traindf)
ncol(traindf)
summary(traindf)
str(traindf)

#1
prop.table(table(traindf$Survived))

#2
ggplot(traindf, aes(x = Survived)) + geom_bar()

#3
traindf$Sex= as.factor(traindf$Sex)
traindf$Survived= as.factor(traindf$Survived)
traindf$Pclass= as.factor(traindf$Pclass)
traindf$Embarked = as.factor(traindf$Embarked)

ggplot(traindf, aes(x= Sex, fill= Survived))+ theme_bw() + geom_bar() 
        +labs(y="Passenger Count", x="Titantic Survival by Sex")

#4
ggplot(traindf, aes(x= Pclass, fill= Survived))+ theme_bw() + geom_bar() +labs(y="Passenger Count", x="Titantic Survival by Pclass")

#5
ggplot(traindf, aes(x= Age, fill= Survived))+ theme_bw() + 
      geom_bar() +labs(y="Passenger Count", x="Titantic Survival by Age")

#6
ggplot(traindf,aes(x=Age,fill=as.factor(Survived))) + geom_bar() +
  facet_wrap(~Sex+Pclass)
