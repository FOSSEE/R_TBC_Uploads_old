#Page.No 9.17-9.18
# To determine the percentage of cases that are above and below given scores

# To find the z- score 
scale(55,center = 52,scale = 5)

# (a) to find the percentage of cases lie above 55 

ans<-round(pnorm(55, mean=52, sd=5,lower.tail = FALSE)*100,digits = 2)
cat("The percentage of cases lie above 55 i.e above 0.6sd is ",ans,"%")

# (b) to find the percentage of cases lie below 55 

ans<-round(pnorm(55, mean=52, sd=5,lower.tail = TRUE)*100,digits = 2)
cat("The percentage of cases lie above 55 i.e below 0.6sd is ",ans,"%")

# (C) to find the percentage of cases lie below 50
scale(50,center = 52,scale = 5)

ans<-round(pnorm(50, mean=52, sd=5,lower.tail = TRUE)*100,digits = 2)
cat("The percentage of cases lie above 50 i.e above -0.4sd is ",ans,"%")

