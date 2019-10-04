##Example 7.3.2 Pg.239
##Test for means when population variances are unknown (one sided)

control <-c(131,115,124,131,122,117,88,114,150,169)
sci <- c(60,150,130,180,163,130,121,119,130,148)

t.test(control,sci)
#pvalue>0.05, hence not significant


