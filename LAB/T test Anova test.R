# 1-sample T-test
set.seed(0)
ship_v <- c(rnorm(50, mean = 37000, sd = 25000))
ship_v
t.test(ship_v, mu = 37000)

v1 <- c(1,2,3,4,5,6)
v2 <- c(2,4,6,8,10,12)
t.test(v1, v2, paired=TRUE)

# 2-way T-test
set.seed(0)
v1 <- c(rnorm(500, mean = 150, sd = 10))
v2 <- c(rnorm(500, mean = 144, sd = 9))
t.test(v1, v2, equal.var=TRUE)

# Paired T-test
set.seed(0)
v1 <- c(rnorm(500, mean = 150, sd = 10))
v2 <- c(rnorm(500, mean = 144, sd = 9))
t.test(v1, v2, paired=TRUE)

# Anova test
install.packages("ggpubr")
library("ggpubr")
install.packages("tidyverse")
library("tidyverse")
install.packages("rstatix")
library("rstatix")

crop.data <- read.csv("cropdata.csv")
summary(crop.data)

# 1-way Anova test
anovaoneway <- aov(yield ~ fertilizer, data = crop.data)
summary(anovaoneway)

# 2-way Anova test
anova2way <- aov(yield ~ fertilizer + density, data = crop.data)
summary(anova2way)

# 3-way Anova test
anova3way <- aov(yield ~ fertilizer + density + block, data = crop.data)
summary(anova3way)
