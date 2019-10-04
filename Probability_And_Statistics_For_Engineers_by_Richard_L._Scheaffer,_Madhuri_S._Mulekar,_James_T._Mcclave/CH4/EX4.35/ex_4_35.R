A1<- 80
A2<- 120
DTA1<-8
DTA2<-2
DFA1<-13
DFA2<-27
NDA1<-59
NDA2<-91
TOTAL<-200
cat("overall defective trash rate",( DTA1+DTA2)/TOTAL)
cat("prob that pen is defective and produced by assembly line1 ", DTA1/TOTAL)
cat("Prob pen is defective if produced by line1 ", (DTA1/TOTAL)/(A1/TOTAL))

