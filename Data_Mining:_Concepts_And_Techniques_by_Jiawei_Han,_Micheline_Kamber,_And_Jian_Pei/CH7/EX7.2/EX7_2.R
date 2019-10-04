library(arules)

#### it demonstartes redundant rules and constraints (Example 7.8)

data("Income")


Ass_rules <- apriori(Income, parameter = list(support = 0.5,conf=0.9))

inspect(rules[is.redundant(Ass_rules)])




