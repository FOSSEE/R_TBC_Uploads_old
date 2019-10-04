# mean and median
productivity<-c(4.4 ,4.9, 4.2 ,4.4, 4.8 ,4.9, 4.8, 4.5, 4.3 ,4.8 ,4.7 ,4.4, 4.2)
new_list<-sort(productivity)
n<-length(productivity)
 
if(n%%2==0) {
  a<-new_list[n/2]
  print(a)
  b<-new_list[(n/2)+1]
  print(b)
  print("medain is")
  print((a+b)/2)
} else {
  m<-(n+1)/2
  print("output value of median is")
  print(new_list[m])
}
print(" output value of mode is ")
modal_productivity<-table(productivity)
names(modal_productivity)[which(modal_productivity==max(modal_productivity))]