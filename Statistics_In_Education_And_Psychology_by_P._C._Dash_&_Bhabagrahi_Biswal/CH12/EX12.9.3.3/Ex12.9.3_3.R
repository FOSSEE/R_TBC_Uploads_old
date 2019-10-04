#Page.no 12.13

x<-c(40,36,35,34,40,28,31,34,37,25)
y<-c(50,42,51,46,35,52,68,51,84,63)

t<-t.test(x, y, paired = TRUE, alternative = "two.sided",conf.level = 0.99)

degrees_of_freedom<-t$parameter  # Degrees of freedom

t_ratio<-abs(t$statistic)   # t calculated value

critical_t<-abs(qt(0.01/2,degrees_of_freedom)) # t table value

p<-t$p.value          # P value

cat("The p value is",p,"which is less than 0.01")

if(t_ratio > critical_t)
  {
    cat("Reject null hypothesis and it is significant")
  } else
  {
    cat("Cannot reject null hypothesis and no significance")
  }

"Therefore, the gain from trial 1 to 5 is significance at 0.01 level of significance"

