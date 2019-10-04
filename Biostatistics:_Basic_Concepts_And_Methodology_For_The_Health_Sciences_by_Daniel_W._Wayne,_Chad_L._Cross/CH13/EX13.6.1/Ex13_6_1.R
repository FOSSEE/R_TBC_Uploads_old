##Example 13.6.1 Pg.691
##Mann Whitney test

exposed <-c(14.4,14.2,13.8,16.5,14.1,16.6,15.9,15.6,14.1,15.3,15.7,16.7,13.7,15.3,14.0)
unexposed <-c(17.4,16.2,17.1,17.5,15,16,16.9,15,16.3,16.8)

wilcox.test(exposed, unexposed, conf.level=0.95,conf.int=T)  #for mann whitney test

