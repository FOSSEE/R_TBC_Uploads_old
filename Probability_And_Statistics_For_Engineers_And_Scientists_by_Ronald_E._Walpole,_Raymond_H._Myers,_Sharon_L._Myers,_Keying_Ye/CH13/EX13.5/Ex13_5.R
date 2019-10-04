
# Chapter 13
# Example 13.5 page no. 529 from the pdf..
# Dunnett Test..

# To compare each catalyst with control using 2 sided hypothesis..
# Package used "DescTools", if already installed delete the below line from the code..
install.packages("DescTools")

library(DescTools)

co <- c(50.7,51.5,49.2,53.1,52.7)

cat1 <- c(54.1,53.8,53.1,52.5,54.0)

cat2 <- c(52.7,53.9,57.0,54.1,52.5)

cat3 <- c(51.2,50.8,49.7,48.0,47.2)

DunnettTest(list(co,cat1,cat2,cat3))

# The value of Diff column in the table varies slightly from the T.B, due to approximatons..
# Like d1 and d3  in T.B are 2.14 and -2.14, and from computation coming out to be 2.06 and -2.06 so that's due to approximations or different method to approach the same problem but final inferences are same..

print("From the Table looking at p-value we conclude that catalyst 2 is significantly different from the mean yield of the reaction using the control..")

