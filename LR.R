data("cars")
head(cars)

summary(cars)

hist(cars$speed)
plot(speed ~ dist, data = cars)

reg <- lm(speed ~ dist, data = cars)
summary(reg)

plot(speed ~ dist, data = cars)
abline(reg)

reg$coef

# x <- 1:10
# y <- 1:10
x <- c(3,5,7,1,2)
y <- c(51,2,9,54,6512)
df <- data.frame(x,y)
df

cor(df$x, df$y)
reg <- lm(y~x, data=df)
summary(reg)

plot(y~x, data = df)
abline(reg)

# if p <= 0.05 then reject H0 (no relation)
# if p> 0.5 then accept H0 (relation)