library("graphics")
library("datasets")
data(mtcars)
str(mtcars)

View(mtcars)

plot(mtcars$hp,mtcars$mpg,main="Scatter Plot",sub="Horsepower vs Miles per Gallon",
     xlab="Horsepower",ylab="Miles per Gallon",col="red")

barplot(mtcars$mpg, main="Bar Plot", xlab="Miles per Gallon",ylab="Count",col="red")

boxplot(mtcars$disp,mtcars$hp,names=c("disp","hp"))

plot(mtcars$cyl, mtcars$vs)

mtcars$am <- as.factor(mtcars$am)
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$vs <- as.factor(mtcars$vs)

ggplot(mtcars,aes(x=cyl,y=vs)) +geom_point()

ggplot(mtcars,aes(x=cyl,y=vs,color=am)) + geom_jitter(width=0.1,alpha=0.5)

data(HairEyeColor)
mosaicplot(HairEyeColor)