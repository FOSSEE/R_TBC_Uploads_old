#Null hypotheses: alpha1 = alpha2 = alpha3 = 0; beta1 = beta2 = 0
#( alphabeta ) terms are all equal to zero
#Alternative hypotheses: The alpha's are not all equal to zero; the beta's are not all
#equal to zero; the (alphabeta) terms are not all equal to zero
F0.01=qf(1-0.01,2,12)#df=2,12
F0.01
F0.01=qf(1-0.01,1,12)#df=1,12
F0.01
#Criteria:a)For replications reject the null hypotheses if F > 6.93, the value of
#F0.01 for 2,12 df.
#b)for the factor A, reject the null hypothesis if F > 9.33, the value of F0.01 for df=1,12
#c)for factor B, reject if F > 9.33, the value of F0.01 for df= 1,12
#d)for the interaction effect, reject if F > 6.93, the value of F0.01 for df=2,12
rep_1<-c(707,652,522,630,450,845)
rep_2<-c(632,669,554,648,545,810)
rep_3<-c(604,674,484,610,474,682)
r<-c(707,632,604,652,669,674,522,554,484,630,648,610,450,545,474,845,810,682)
A<-c(rep('MN',6),rep('CO',6),rep('TX',6))#Location 
B<-c(rep('RCA',3),rep('RPA',3),rep('RCA',3),rep('RPA',3),rep('RCA',3),rep('RPA',3))#Type of Mat.
Dat<-data.frame(A,B,r)
av = lm(r~A*B,data=Dat)
anova(av)
cat('The F = 12.0 for Factor B exceeds F0.01 = 9.33 for 1 and 12 degrees of freedom and that
F = 36.1 for the AB interaction term exceeds F0.01 = 6.93 = for 2 and')



