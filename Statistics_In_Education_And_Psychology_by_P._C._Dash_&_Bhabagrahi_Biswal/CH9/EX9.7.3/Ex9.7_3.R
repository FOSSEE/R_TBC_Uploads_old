# Page.no. 9.15

# To determine the percentile rank of candidate in his group
scale(50,center = 60,scale = 6)

pnorm(50, mean=60, sd=6)*100

ans<-round(pnorm(50, mean=60, sd=6),digits = 2)*100

cat("The percentile rank of the student who secored 50 marks 
    in an achievement test is ",ans,"%")
