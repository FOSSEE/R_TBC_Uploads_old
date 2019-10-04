# KRUSKAL-WALLIS TEST  :

Group_native <- c(8,5,7,11,9,6)
Group_water <- c(10,12,11,9,13,12)
Group_fertilizer <- c(11,14,10,16,17,12)
Group_water_fertilizer <- c(18,20,16,15,14,22)
Group <-data.frame(Group_native,Group_water,Group_fertilizer,Group_water_fertilizer)
Group

# alpha = .01, critical value :
qchisq(.99,df=3)

native<- Group$Group_native
water<- Group$Group_water
fertilizer<- Group$Group_fertilizer
water_fertilizer<- Group$Group_water_fertilizer
x1<-c(native,water,fertilizer,water_fertilizer)
x1
g<- factor(rep(1:4, c(6,6,6,6)),
           labels = c("native", 
                      "water",
                      "fertilizer",
                      "water_fertilizer"))
kruskal.test(x1, g)


#  The observed K value is 16.77 and the critical is 11.3449. 
# Because the observed value is greater than the table value, the null hypothesis
# is rejected. There is a signi???cant difference in the way the trees grow