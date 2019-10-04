complain = c(32,17,5,4,3,3,1,1)
n= sum(complain)
rf=complain/n
cat("Relative frequency :", rf)

a =function(x){
sum(  rf[1:x])
}

cat("CRF:")
for (i in 1:8) {
cat( a(i),"   ")
}

