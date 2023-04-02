library(caTools)

getwd()
setwd("C:\\Users\\HP\\Desktop")

df <- read.csv("Salary_Data.csv")

head(df)
summary(df)
str(df)

cor(df$YearsExperience, df$Salary)
ggplot(df, aes(x=YearsExperience, y=Salary)) + geom_point()

sample <- sample.split(df$Salary, SplitRatio = 0.75)
train  <- subset(df, sample == TRUE)
test   <- subset(df, sample == FALSE)

dim(train)
dim(test)

train <- as.data.frame(scale(train))
test <- as.data.frame(scale(test))

reg <- lm(Salary ~ YearsExperience, data=train)
summary(reg)

ggplot(train, aes(x=YearsExperience, y=Salary)) + geom_point() + geom_smooth(method = "lm")

predict(reg, test)
reg_rmse <- sqrt(mean((predict(reg, test) - test$Salary)^2))
reg_rmse

ggplot(test, aes(x=YearsExperience, y=Salary)) + geom_point() + geom_smooth(method = "lm")