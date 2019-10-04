n=16
#no of bits
num=0
for (i in 0:(n-2)){
  num=num+(1*(2^i))
}
cat("Thus a 16-bit computer word can store decimal integers ranging from",(-1*num),"to",num)