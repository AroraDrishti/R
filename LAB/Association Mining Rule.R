library(arules)
class(Groceries)
inspect(head(Groceries, 3))
If you have to
read data from a file as a transactions data, use read.transactions().
tdata <- read.transactions("transactions_data.txt", sep="\t")
If you already
have your transactions stored as a dataframe, you could convert it to class transactions as follows,
tData <- as (myDataFrame, "transactions") # convert to 'transactions' class
size(head(Groceries)) # number of items in each observation
check frequent transactions
LIST(head(Groceries, 3))
frequentItems <- eclat (Groceries, parameter = list(supp = 0.07, maxlen = 15)) #
inspect(frequentItems)
itemFrequencyPlot(Groceries, topN=10, type="absolute", main="Item
Frequency")
How to get the product recommendation rules
rules <- apriori (Groceries, parameter = list(supp = 0.001, conf = 0.5)) # Min Support as 0.001, confidence as 0.8.
rules_conf <- sort (rules, by="confidence", decreasing=TRUE) # 'high-confidence' rules.
inspect(head(rules_conf)) # show the support, lift and confidence for all rules
rules_lift <- sort (rules, by="lift", decreasing=TRUE) # 'high-lift' rules.
inspect(head(rules_lift)) # show the support, lift and confidence for all rules
influenced purchase of product X
rules <- apriori (data=Groceries, parameter=list (supp=0.001,conf = 0.08), appearance = list (default="lhs",rhs="whole
milk"), control = list (verbose=F))
rules_conf <- sort (rules, by="confidence", decreasing=TRUE) # 'high-confidence' rules.
were purchased after/along with product X
The is a case
to find out the Customers who bought ‘Whole Milk’ also bought . . In
the equation, ‘whole milk’ is in LHS (left hand side).

To find what factors

To find out what products

inspect(head(rules_conf))



Adjust the maxlen, supp and conf arguments in the apriori function to control the number of rules generated. You will have to adjust this based on the sparesness of you data.

rules <- apriori(Groceries, parameter = list (supp = 0.001, conf = 0.5, maxlen=3)) # maxlen = 3 limits the elements in a rule to 3

rules <- apriori (data=Groceries, parameter=list (supp=0.001,conf = 0.15,minlen=2), appearance = list(default="rhs",lhs="whole milk"), control = list (verbose=F)) # those who bought 'milk' also bought..

rules_conf <- sort (rules, by="confidence", decreasing=TRUE) # 'high-confidence' rules.

inspect(head(rules_conf))