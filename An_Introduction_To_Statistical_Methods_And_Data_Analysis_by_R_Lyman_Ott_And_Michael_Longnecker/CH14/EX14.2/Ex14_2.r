paint_data=c(28, 35, 27, 21,21, 36, 25 ,18,26, 38, 27, 17,16, 25, 22, 18)
ybar=sum(paint_data)/length(paint_data)
print(ybar)
# total sum of squares 
TSS=0
i=1
while(i<=length(paint_data)){
  TSS=TSS+(paint_data[i]-ybar)^2
  i=i+1
}
print(TSS)
# between treatment sum of squares
 
yi=c(mean(paint_data[1:4]),mean(paint_data[5:8]),mean(paint_data[9:12]),mean(paint_data[13:16]))
 
SST=0
j=1
while(j<=length(paint_data)/4){
  SST=SST+4*((yi[j]-ybar)^2)
  j=j+1
}
print(SST)
#  sum of squares for error
SSE=TSS-SST
print(SSE)