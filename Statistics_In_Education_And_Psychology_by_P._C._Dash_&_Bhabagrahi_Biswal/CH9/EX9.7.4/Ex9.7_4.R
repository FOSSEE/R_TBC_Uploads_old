# Page.no. 9.16

#To determine percentile rank of a candidate
# To find the z- score 
scale(60,center = 50,scale = 6)

#to find the percentage
ans<-round(pnorm(60, mean=50, sd=6),digits = 2)*100

cat("The percentile rank of the student is ",ans)
