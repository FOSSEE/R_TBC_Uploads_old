#Data from Example 7
Tem=c(45,43,51,47,46,52,48,50,55,42,37,49)
data<-matrix(c(45,43,51,139,47,46,52,145,48,50,55,153,42,37,49,128,182,176,207,565),ncol=4,byrow=TRUE)
data
rownames(data)<-c("Detergent A","Detergent B","Detergent C","Detergent D","Totals")
colnames(data)<-c("Engine 1","Engine 2","Engine 3","Totals")
data
a = 4
b = 3
T1. = 139 
T2. = 145
T3. = 153 
T4. = 128
T.1 = 182
T.2 = 176
T.3 = 207
T.. = 565
Sumy=26867
n=12
C=T..^2/n#factor
C
SST=sum(Tem^2)-C
SST
SSTr=((139^2+145^2+153^2+128^2)/3)-C
SSTr
SSB=((182^2+176^2+207^2)/4)-C
SSB
SSE=SST-SSTr-SSB
SSE