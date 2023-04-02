library(tidyverse)
library(ggplot2)
library(ISLR)

data(mtcars)
df <- mtcars

view(df)
head(df)
str(df)
summary(df)

#EDA
ggplot(data = df, aes(cyl)) + geom_bar() + labs(title = "Bar Plot", y = "Count", x = "cyl")+
  
  hist(df$disp)
ggplot(data = df, mapping = aes(x = gear, y = disp)) + geom_boxplot()

ggplot(data = df, aes(disp, mpg)) + geom_point()

ggplot(data = df, mapping = aes(x = gear, y = disp)) + 
  geom_boxplot()

round(cor(df), 2)

# Outlier
boxplot(df)
boxplot(df$hp)
boxplot(df$qsec)

for (x in c('hp','qsec'))
{
  value = df[,x][df[,x] %in% boxplot.stats(df[,x])$out]
  df[,x][df[,x] %in% value] = NA
} 

sum(is.na(df$hp))
sum(is.na(df$qsec))

# Missing values
sapply(df, function(x) sum(is.na(x)))
df$hp[is.na(df$hp)] <- mean(df$hp, na.rm=TRUE)
df$qsec[is.na(df$qsec)] <- mean(df$qsec, na.rm=TRUE)

# Handle categorical variables
df2 <- data.frame(
  color = c('red','blue','red','red','blue','blue','red','blue'),
  marks = c(33,56,55,85,55,62,12,65)
)

tab <- table(df2$color)
tab
prop.table(tab)

df2$color <- unclass(df2$color)
df2

# Scaling
nor <- function(x) {((x-min(x))/(max(x)-min(x)))}
df2_nor <- sapply(df2, nor)

df <- scale(df)
view(df)
