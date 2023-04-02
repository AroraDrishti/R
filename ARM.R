install.packages("arules", "arulesViz")
library(arules)
library(arulesViz)

market_basket <- list(  
                        c("apple", "beer", "rice", "meat"),
                        c("apple", "beer", "rice"),
                        c("apple", "beer"), 
                        c("apple", "pear"),
                        c("milk", "beer", "rice", "meat"), 
                        c("milk", "beer", "rice"), 
                        c("milk", "beer"),
                        c("milk", "pear")
                     )

names(market_basket) <- paste("T", c(1:8), sep = "")

trans <- as(market_basket, "transactions")

dim(trans)
itemLabels(trans)
summary(trans)

itemFrequencyPlot(trans, topN=10,  cex.names=1)

arules <- apriori(data = trans, parameter = list(supp=0.3, conf=0.5, maxlen=10, target= "rules"))
summary(arules)

inspect(sort(arules, by = "lift"))

plot(arules, method = "graph",  engine = "htmlwidget")
plot(arules, method = "paracoord", measure = "confidence", shading = "lift")