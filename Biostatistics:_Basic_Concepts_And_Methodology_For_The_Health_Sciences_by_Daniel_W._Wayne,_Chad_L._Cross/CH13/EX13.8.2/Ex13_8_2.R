##Example 13.8.2 Pg.708
##Kruskal Wallis one way ANOVA

book_value <-c(1735,1520,1476,1688,1702,2667,1575,1602,1530,1698,5260,4455,4480,4325,5075,5225,4613,4887,2790,2400,2655,2500,2755,2592,2601,1648,1700,3475,3115,3050,3125,3275,3300,2730,6090,6000,5894,5705,6050,6150,5110)
group<-c(rep(1,10),rep(2,8),rep(3,9),rep(4,7),rep(5,7))
group
group1<-factor(group,labels=c("A","B","C","D","E"))
group1
dt<-data.frame(group1,book_value)
dt
kruskal.test(book_value~group1)

#pval <0.05, hence there is a difference in the average book value among five groups



