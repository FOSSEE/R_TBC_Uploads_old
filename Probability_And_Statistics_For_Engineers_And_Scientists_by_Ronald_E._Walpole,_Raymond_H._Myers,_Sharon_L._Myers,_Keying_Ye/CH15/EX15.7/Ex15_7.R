
# Chapter 15
# example 15.7 page no. 639
# to construct a 2 level screening design with 6 variables containing 12 design points..
# used package FrF2, if not installed can be installed using install.packages("FrF2")

library(FrF2)

print("The 2 level scrrening design with 6 variables containing 12 design points is")

pb(12,6,randomize = F,default.levels = c("-","+"))

# the answer may differ but the concept is same, the T.B as well as the software answers are correct, R has selected randomly the design,
#if we set randomize= T, then every time the instruction is executed then every time a diferent design will appear, so that's why the design is correct.
