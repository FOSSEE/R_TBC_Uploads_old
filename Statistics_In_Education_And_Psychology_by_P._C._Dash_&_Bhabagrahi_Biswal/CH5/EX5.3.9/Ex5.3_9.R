#Page.No 5.15

no.of.students<-c(8,12,10,14,9)
Mean_of_achievement_test<-c(55,78,80,50,87)
M_comb<-weighted.mean(Mean_of_achievement_test,no.of.students)
cat("combined mean of the achievement test of students of 5 classes is",M_comb)
