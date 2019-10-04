#Null Hypothesis:sigma_seq1 =  sigma_seq2
#Alternative Hypothesis:sigma_seq1 <  sigma_seq2
alpha=0.05#loc
F0.05=qf(1-0.05,11,11)#df1=11,df2=11
F0.05
#reject null hypothesis if F>F0.05 for 11 and 11 degrees of freedom
s1=0.035
s2=0.062
F=s2**2/s1**2
F
print("hence the null hypothesis is rejectecd ")
#there for plating done by company 1 is less variable that done by company 2
