#Page.No 13.7 - 13.9

Group1<-c(6,7,9,10,8)
Group2<-c(11,10,8,12,9)

combined_groups<-data.frame(cbind(Group1,Group2))
stackedgroup<-stack(combined_groups)
anova_results<-aov(values~ind,data = stackedgroup)
summary(anova_results)

"The ANOVA shows that there is significant differences among the three methods of instructions"

# To find the t-value
library(BSDA)

result<-tsum.test(mean.x = mean(Group1),s.x = sd(Group1),n.x = length(Group1),
                  mean.y = mean(Group2),s.y = sd(Group2),n.y = length(Group2))

t<-abs(result$statistic)

t^2 ->F # From the anova_results F= 4

