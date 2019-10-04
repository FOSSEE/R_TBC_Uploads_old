# Page.No 12.26 - 12.29

GroupX<-c(26,24,18,17,18,20,18)
GroupY<-c(38,26,24,24,30,22)

library(BSDA)
result<-tsum.test(mean.x = mean(GroupX),s.x = sd(GroupX),n.x = length(GroupX),
                  mean.y = mean(GroupY),s.y = sd(GroupY),n.y = length(GroupY))

t_ratio<-abs(result$statistic)  # T calculated value

cat("The calculated t value is",t_ratio)

df<-length(GroupX)+length(GroupY)-1 # degrees of freedom

p_value<-result$p.value     #P value

critical_t<-abs(qt(0.05/2,df)) # t table value

if(t_ratio > critical_t)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and their is No significance")
}

"Thus their is  significant difference between Group X and Group Y"
cat("p value is less than 0.05 i.e",p_value,"null hypothesis is rejected")
