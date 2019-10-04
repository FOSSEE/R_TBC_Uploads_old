## Taken from arules package PDF
library(arules)

data("Groceries")

## Groceries contains a hierarchy stored in itemInfo

Groceries_level2 <- aggregate(Groceries, by = "level2")

inspect(Groceries_level2)


