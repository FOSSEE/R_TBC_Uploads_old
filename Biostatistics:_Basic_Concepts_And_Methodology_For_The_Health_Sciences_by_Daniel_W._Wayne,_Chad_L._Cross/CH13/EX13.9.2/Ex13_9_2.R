##Example 13.9.2 Pg.715
##Friedman test

salivaryflow <-
  matrix(c(29,48,75,100,72,30,100,100,70,100,86,96,54,35,90,99,5,43,32,81,17,40,76,81,74,100,100,100,6,34,60,81,16,39,73,79,52,34,88,96,8,42,31,79,29,47,72,99,71,100,97,100,7,33,58,79,68,99,84,93,70,30,99,99),
         nrow = 16,
         byrow = TRUE,
         dimnames = list(1 : 16,
                         c("A", "B", "C","D")))
friedman.test(salivaryflow)

#pval <0.05, hence there is a difference in the salivary flow among four groups


