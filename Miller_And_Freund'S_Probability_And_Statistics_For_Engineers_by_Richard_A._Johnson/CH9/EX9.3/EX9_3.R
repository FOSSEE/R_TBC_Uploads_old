#sigma=0.5 null hypothesis thickness is equal to 0.5mil
#sigma>0.5 alternative hypothesis
sigma=0.5
LOC=0.05#level of significance
X.chi=qchisq(1-0.05,14)
#Reject the null hypothesis if chi.seq>X.chi if degree if freedom is 14
n=15#total die cut
s=0.64#standard deviation
chi.seq=((n-1)*s**2)/sigma**2
chi.seq
if(chi.seq>X.chi){
  print("Reject null hypothesis")
}else{
  print("accept null hypothesis")
}