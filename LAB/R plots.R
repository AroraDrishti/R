data(mtcars)
summary(mtcars)
View(mtcars)

# Barplot Visualization
barplot(mtcars$gear)
barplot(table(mtcars$gear))

# Histogram Visualization
hist(mtcars$cyl, xlab = "Number of cylinders", ylab = "Count", 
     main = "Histogram for number of cylinders in car", breaks = 10, col ="lightseagreen", border = "red")

# Boxplot Visualization
boxplot(mtcars$disp, ylab = "disp", border = "Red", col = "turquoise")

# Boxplot Visualization (one vs other variable) 
boxplot(mpg ~ disp, data = mtcars, xlab = "disp", ylab = "mpg", 
        main = "disp vs mpg", pch = 24, cex = 20, border = "black", col = "pink")

# Scatter Plot Visualization
plot(mpg ~ disp, data = mtcars)
