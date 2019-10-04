library(arules)

data("Adult")

## find only frequent itemsets which do not contain small or large income

items <- apriori(Adult, parameter = list(support= 0.001, conf=0.001, target="frequent"))

close <-is.closed(items)


print(close)








