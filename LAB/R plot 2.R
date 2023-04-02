# Q1
x <- c(12,24,39,43)
y <- c(14,26,37,49)

plot(x, y)

# Q2
plot(x, y, col= "black", pch = 11, type = "p", main = "Scatter Plot")

# Q3 
plot(x, y, col= "red", pch = 24, type = "b", main = "Scatter Plot")

# Q4
plot(x, y, col = 1:10, pch = 1:10, cex = 1:10, type = "b", main = "Another Scatter Plot")

# Q5
palette()
colors()
grep("blue", colors(), value=TRUE)

palette(grep("blue", colors(), value=TRUE))
palette()
palette("default")
palette()

# Q6
x <- rep(c("PhDstudent", "Postdoc", "Technician", "PI"), c(8,10,5,2))
mytable <- table(x)
barplot(mytable)

# Q7
barplot(mytable, col = "red", main = "Bar Plot", las = 2)

# Q8
x <- c(1,2,3,4)
xfact <- factor(x,
                levels=c("PhDstudent", "Postdoc", "Technician", "PI"),
                ordered=TRUE)
xfact
xfacttable <- table(xfact)
barplot(xfacttable,
        col=1:4,
        main="reorganized bar plot",
        las=1)
barplot(xfacttable,
        col=1:4,
        main="reorganized bar plot",
        las=2)
barplot(xfacttable,
        col=1:4,
        main="reorganized bar plot",
        las=3)

# Q9
rnames = c("R1", "R2", "R3")
cnames = c("C1", "C2", "C3")
mat1 <- matrix(c(1:9), 3, 3, dimnames = list(rnames, cnames))
mat1

barplot(mat1, col=sample(colors(), 4))

mycolors <- sample(colors(), 4)
mycolors

barplot(mat1, col = mycolors, ylim = c(0,50),
        main="Stacked Barplot")
legend("topleft",
      legend=c("Technician", "PhDstudent", "PostDoc", "PI"), fill=mycolors) 

# Q10
variable<- rep(c("PhDstudent", "Postdoc", "Technician", "PI"), c(2, 3, 4, 5))
myvariable <- table(variable)
pie(myvariable, main="pie chart", col=c("lightblue", "lightgreen", "salmon", "maroon"))

# Q11
x <- matrix(rnorm(1000), ncol=4)
boxplot(x)
boxplot(x, xlab = "X-axis", ylab = "Y-axis", at = c(1,2,4,5))

boxplot(x, xlab = "X-axis", ylab = "Y-axis", at = c(1,2,4,5), h = 3, col = "red", lwd = 2, lty = 3)

# Q12
x <- rnorm(200)
hist(x)
hist(x, border = "blue", breaks = 50, main = "Histogram", xlab = "X-axis", cex.main=2, cex.lab=1)
