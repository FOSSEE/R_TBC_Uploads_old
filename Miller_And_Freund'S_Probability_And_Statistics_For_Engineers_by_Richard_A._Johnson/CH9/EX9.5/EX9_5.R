#dealing with the strength of recycled materials for use in pavements
loca1<-c(707,632,604,652,669,674)
loca2<-c(552,554,484,630,648,610)
L.O.C=0.02
S1=var(loca1)
S2=var(loca2)
#Null Hypothesis:=sigma_seq1=sigma_seq2
#Alterative Hypothesis:=sigma_seq1 != sigma_seq2
F0.01=qf(1-0.01,5,5)
#reject null hypothesis if F>F0.01 for 4 and 5 degrees of freedom
F=(S2)/(S1)
F
print("Since F doesn't exceed F0.01 there for null hypothesis can't be rejected")
