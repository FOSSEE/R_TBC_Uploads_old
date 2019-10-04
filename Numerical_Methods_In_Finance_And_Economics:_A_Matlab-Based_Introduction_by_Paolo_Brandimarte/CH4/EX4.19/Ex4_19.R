require(bitops)
gray<-function(x) bitXor(x,bitShiftR(x,1))
codes = matrix(0,16,4);
for (i in 1:16){
  print(intToBits(gray(i-1)) [4:1])
}