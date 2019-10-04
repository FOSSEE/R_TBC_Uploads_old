library(arules)


### Complement Items from the dataset



data("Adult")
rules <- apriori(Adult)

InMe<- interestMeasure(rules, measure = "kulczynski",transactions = Adult)


print(InMe)




