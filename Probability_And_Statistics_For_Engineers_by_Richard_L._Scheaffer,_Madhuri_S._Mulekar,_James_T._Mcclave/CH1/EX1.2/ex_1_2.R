LA_days= c(155,138,36,5)
O_days= c(233,39,1,1)

n1=sum(LA_days) 
rf1 =LA_days/n1
n2=sum(O_days)
rf2=O_days/n2
cat("Relative frequency for LA:", rf1)
cat("Relative frequency for Oriando :",rf2)


a =function(x){
  sum(  rf1[1:x])
}
cat("Cumilative frequency for LA: ")
for (i in 1:4) {
  cat( a(i),"   ")
}

b =function(x){
  sum( rf2[1:x])
}
cat("Cumilative frequency for Ontario: " )
for (i in 1:4) {
  cat( b(i),"   ")
}


