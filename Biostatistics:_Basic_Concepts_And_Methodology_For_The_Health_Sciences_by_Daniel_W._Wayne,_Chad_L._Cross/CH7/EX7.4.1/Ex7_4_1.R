##Example 7.4.1 Pg.251
##Paired t test (one sided)

preop <- c(22,63.3,96,9.2,3.1,50,33,69,64,18.8,0,34)
postop <-c(63.5,91.5,59,37.8,10.1,19.6,41,87.8,86,55,88,40)

t.test(postop,preop,paired = T,alternative = "greater")

#pvalue<0.05 , hence significant




