data(iris)

df <- iris[, 1:4]
head(df)

kmeans.re <- kmeans(df, centers = 3)
model

cm <- table(iris$Species, model$cluster)
cm

plot(iris[c("Sepal.Length", "Sepal.Width")])
plot(iris[c("Sepal.Length", "Sepal.Width")],col = model$cluster)

model$centers[, c("Sepal.Length", "Sepal.Width")]
points(model$centers[, c("Sepal.Length", "Sepal.Width")], col = 1:3, pch = 8, cex = 3) 
