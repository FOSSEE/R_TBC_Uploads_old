
# Chapter 15
# example 15.2 page no. 613 from the pdf
# Factorial Experiment in a Regression Setting..

hold_tim <- c(0.5,0.8,0.5,0.8)

flex_time <- c(0.10,0.10,0.20,0.20)

yield <- c(28,39,32,46)

dat <- data.frame(hold_tim,flex_time,yield)
 
dat$hold_tim <- factor(dat$hold_tim)
dat$flex_time <- factor(dat$flex_time)


f <- function(x){
  
  dat$yield[x]
  
}

levels(dat$hold_tim) <- c(-1,1)
levels(dat$flex_time) <- c(-1,1)

cat("The regression equation is",(f(1)+f(2)+f(3)+f(4))/4,"+",(f(2)+f(4)-f(1)-f(3))/4,"*x1 +",(f(3)+f(4)-f(1)-f(2))/4,"*x2")
        
        
    
        
