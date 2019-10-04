#Page.No 12.23- 12.26

control_group<-c(11,11,10,12,8,15,10,8,10,8)
experimental_group<-c(4,4,8,9,12,15,3,13,9,9)

library(BSDA)
result<-tsum.test(mean.x = mean(control_group),s.x = sd(control_group),n.x = length(control_group),
          mean.y = mean(experimental_group),s.y = sd(experimental_group),n.y = length(experimental_group))

t_ratio<-result$statistic   # T calculated value

cat("The calculated tvalue is ",t_ratio)

df<-length(control_group)-1 # degrees of freedom

p_value<-result$p.value     #P value

critical_t<-abs(qt(0.05/2,df)) # t table value

if(t_ratio > critical_t)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and their is No significance")
}

"Thus their is no significant difference between the mean score of control group and experimental group"
cat("p value is greater than 0.05 i.e",p_value,"null hypothesis retained")
