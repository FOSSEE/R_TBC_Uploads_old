age<-c(15, 16, 17, 18, 19, 20)
frequencies<-c(2, 5, 11, 9 ,14 ,13)
final_age = matrix(0,1,length(age))
i=1
for (j in 1:6){
  for (k in 1:frequencies[j]){
    final_age[i] = age[j]
    i = i +1 
  }
}
final_median = median(final_age)
final_median