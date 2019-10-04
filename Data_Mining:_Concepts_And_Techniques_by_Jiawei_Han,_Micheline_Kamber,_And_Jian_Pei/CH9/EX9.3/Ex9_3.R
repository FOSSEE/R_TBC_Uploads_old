


library(e1071)


C1 <- c(1,1,1,1,1,1,1)
C2 <- c(0,0,0,0,1,1,1)
C3 <- c(0,0,1,1,0,0,1)
C4 <- c(0,1,0,1,0,1,0)

out <-c(0,0,0,1,0,1,0)

Out1<-hamming.distance(C1, out)

print(Out1)


Out2<-hamming.distance(C2, out)

print(Out2)

Out3<-hamming.distance(C3, out)

print(Out3)


Out4<-hamming.distance(C4, out)

print(Out4)