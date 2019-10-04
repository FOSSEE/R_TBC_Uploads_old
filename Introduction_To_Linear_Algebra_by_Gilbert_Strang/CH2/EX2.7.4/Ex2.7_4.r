# Example : 4   Chapter : 2.7   Pageno : 110
# Product of matrix and its trnspose gives symmetric matrix
R<-matrix(c(-1,0,1,-1,0,1),ncol=3)
RT<-t(R)
print("R * t(R)")
print(R%*%RT)
print("t(R) * R")
print(RT%*%R)