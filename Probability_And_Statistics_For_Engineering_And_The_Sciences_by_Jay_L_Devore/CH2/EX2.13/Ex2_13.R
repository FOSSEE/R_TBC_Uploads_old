#Ex2.13, Page 59
#Answers may vary slightly due to rounding off of values

#For A to occur, at least one of the individual components must fail
#To find P(A')=SSSSS
p<-90/100
pa_dash<-p^5
cat("P(A'):",pa_dash,"\n")

pa<-1-pa_dash
cat("P(A):",1-pa_dash,"\n\n")
cat("Roughly",round(pa*100,digits=0),"% of the systems will fail")