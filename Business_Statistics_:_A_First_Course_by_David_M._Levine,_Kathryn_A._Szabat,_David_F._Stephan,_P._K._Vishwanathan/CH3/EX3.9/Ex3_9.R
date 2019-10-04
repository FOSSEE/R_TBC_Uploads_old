#Coeffecient of variation CV=(S/Xbar)*100% 
# S=Sample standard deviation, Xbar=Sample Mean
S_calories<- 46.9042
Xbar_calories <- 130 # values can be found in EX 1 & 8 respectively
percent <- function(x, digits = 2, format = "f", ...) {
  paste0(formatC(100 * x, format = format, digits = digits, ...), "%")
}
CV_calories<- (S_calories/Xbar_calories)
percent(CV_calories)
Sugar<- c(6,2,4,4,4,11,10)
Xbar_sugar <- mean(Sugar)
Xbar_sugar
S_sugar<- sd(Sugar)
S_sugar
CV_sugar<- (S_sugar/Xbar_sugar)
percent(CV_sugar)


