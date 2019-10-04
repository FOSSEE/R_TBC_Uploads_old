# Page.No 12.20-12.23


boys<-c(59,43,37,25,31,36,33,41,20,18)
girls<-c(57,43,44,39,21,18,15,55,40,30)

library(BSDA)
result<-tsum.test(mean.x = mean(boys),s.x = sd(boys),n.x = length(boys),
                  mean.y = mean(girls),s.y = sd(girls),n.y = length(girls))

t_ratio<-abs(result$statistic)   # T calculated value

cat("The calculated t value is",t_ratio)

df<-length(girls)+length(boys)-2 # degrees of freedom

p_value<-result$p.value     #P value

critical_t<-abs(qt(0.05/2,df)) # t table value

if(t_ratio > critical_t)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and their is No significance")
}

"Thus their is no significant difference between the mean intelligence scores of boys and girls"

cat("p value is greater than 0.05 i.e ",p_value,"null hypothesis retained")

