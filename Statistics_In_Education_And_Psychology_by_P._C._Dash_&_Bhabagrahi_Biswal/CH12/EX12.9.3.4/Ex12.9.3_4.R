#Page.no 12.15-12.16

x<-c(16,18,20,24,24,22,20,18,10,8,20)
y<-c(24,20,24,28,30,20,24,22,18,18,24)

t<-t.test(x, y, paired = TRUE, alternative = "two.sided",conf.level = 0.99)

degrees_of_freedom<-t$parameter  # Degrees of freedom

t_ratio<-t$statistic   # t calculated value

critical_t<-abs(qt(0.01/2,degrees_of_freedom)) # t table value

p<-t$p.value          # P value

cat("The calculated t value is",t_ratio)

if(t_ratio > critical_t)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and insignificant")
}

"Therefore, the gain from viewing the film is insignificant"
