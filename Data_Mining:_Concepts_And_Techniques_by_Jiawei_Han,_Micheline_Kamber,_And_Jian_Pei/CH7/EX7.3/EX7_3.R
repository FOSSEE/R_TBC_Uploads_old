library(arules)


### No rare Items in the dataset so I am showing other measure like significance of rules


data("Income")


Ass_rules <- apriori(Income, parameter = list(support = 0.5,conf=0.9))

interestMeasure(Ass_rules,measure = "hyperConfidence",transactions = Income)




