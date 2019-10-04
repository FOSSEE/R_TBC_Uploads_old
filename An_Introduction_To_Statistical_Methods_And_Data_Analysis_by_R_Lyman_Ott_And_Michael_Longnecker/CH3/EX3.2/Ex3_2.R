# median
percentage<-c(95 ,86 ,78 ,90, 62, 73 ,89 ,92 ,84 ,76)
new_list<-sort(percentage)
n<-length(percentage)
 
if(n%%2==0) {
  a<-new_list[n/2]
  print(a)
  b<-new_list[(n/2)+1]
  print(b)
  print("medain is")
  print((a+b)/2)
} else {
  m<-(n+1)/2
  print("median s")
  print(new_list[m])
}