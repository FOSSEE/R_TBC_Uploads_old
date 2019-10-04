value<-c(1, 2, 3, 4, 5, 6)
frequencies<-c(9, 8 ,5 ,5, 6 ,7)
final_value = matrix(0,1,length(value))
i=1
for (j in 1:6){
  for (k in 1:frequencies[j]){
    final_value[i] = value[j]
    i = i +1
  }
}
product  = value*frequencies;
product
sum(product)

total_value = sum(frequencies);
mean_value = sum(product)/total_value #the answer in the textbook is incorrect
which(frequencies==max(frequencies))
m1= max(frequencies);
n= which(frequencies==max(frequencies))

cat("The sample mean is",mean_value)
cat("The median is",median(final_value))
cat("The mode is",value[n])