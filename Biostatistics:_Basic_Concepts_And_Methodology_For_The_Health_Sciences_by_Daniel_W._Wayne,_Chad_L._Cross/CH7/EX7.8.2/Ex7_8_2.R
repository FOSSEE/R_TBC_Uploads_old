##Example 7.8.2 Pg.270
##Test for ratio of two population variances

control <-c(131,115,124,131,122,117,88,114,150,169)
sci <- c(60,150,130,180,163,130,121,119,130,148)

var.test(control,sci)

#pvalue>0.05, hence not significant
#Answer matches with minitab output


