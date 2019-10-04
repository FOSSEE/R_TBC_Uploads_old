##Example 13.8.1 Pg.705
##Kruskal Wallis one way ANOVA

cell_count <-c(12.22,28.44,28.13,38.69,54.91,3.68,4.05,6.47,21.12,3.33,54.36,27.87,66.81,46.27,30.19)
group<-c(rep(1,5),rep(2,5),rep(3,5))
group
group1<-factor(group,labels=c("air","benzaldehyde","acetaldehyde"))
group1
dt<-data.frame(group1,cell_count)
dt
kruskal.test(cell_count~group1)

#pval <0.05, hence there is a difference in the average cell count among three groups

