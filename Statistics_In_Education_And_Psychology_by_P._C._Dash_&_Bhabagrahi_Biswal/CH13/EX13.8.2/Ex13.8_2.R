#Page.No 13.10 - 13.12

lecture<-c(10,12,13,13,14)
seminar<-c(13,15,15,17,18)
discussion<-c(7,7,10,11,12)

combined_groups<-data.frame(cbind(lecture,seminar,discussion))
stackedgroup<-stack(combined_groups)
anova_results<-aov(values~ind,data = stackedgroup)
summary(anova_results)

"The ANOVA shows that there is significant differences among the three methods of instructions"
