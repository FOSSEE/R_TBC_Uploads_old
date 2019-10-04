n1= 33
n2= 12
y1bar = 25.2
y2bar=33.9
s1=8.6
s2=17.4
 

t=(y1bar-y2bar)/(sqrt((s1*s1/n1)+(s2*s2/n2)))
print(t)
# To compute the rejection and p-value, we need to compute the approximate df
c=((s1*s1)/n1)/(((s1*s1)/n1)+((s2*s2)/n2))
print(c)
df=((n1-1)*(n2-1))/((1-c)^2*(n1-1)+(c*c)*(n2-1))
print(df)
# crtitical value
alpha= 0.05 
 
t.alpha=qt(0.05, df=13)
if(t<=t.alpha){
  print(" We will reject H0")
}else{
  print("we fail to reject H0 (no significant evidence")
}