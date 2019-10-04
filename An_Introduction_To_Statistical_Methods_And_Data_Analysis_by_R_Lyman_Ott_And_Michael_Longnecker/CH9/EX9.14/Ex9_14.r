sample_size=6
sw2=0.0153
y1bar=1.175
y2bar=1.293
y3bar=1.328
y4bar=1.415
y5bar=1.500
t=5
alpha=0.05
F_value=qf(1-alpha,t-1,25)

a=c(4,-1,-1,-1,-1)# for control vs agents
# test statistic
vl=sw2*((a[1]^2+a[2]^2+a[3]^2+a[4]^2+a[5]^2)/sample_size)
print(vl)
S=sqrt(vl)*sqrt((t-1)*F_value)
print(S)
# critcal value
l=abs(4*y1bar-y2bar-y3bar-y4bar-y5bar)
print(l)
if(S<l){
  print("  contrasts are significantly different from zero")

}else{
  print(" contrasts are not significantly different from zero")
}

a=c(0,1,1,-1,-1)# Biological vs. chemical
# test statistic
vl=sw2*((a[1]^2+a[2]^2+a[3]^2+a[4]^2+a[5]^2)/sample_size)
print(vl)
S=sqrt(vl)*sqrt((t-1)*F_value)
print(S)
# critcal value
l=abs(0*y1bar+y2bar+y3bar-y4bar-y5bar)
print(l)
if(S<l){
  print("  contrasts are significantly different from zero")
  
}else{
  print(" contrasts are not significantly different from zero")
}

a=c(0,1,-1,0,0)# Bio1 vs. Bio2
# test statistic
vl=sw2*((a[1]^2+a[2]^2+a[3]^2+a[4]^2+a[5]^2)/sample_size)
print(vl)
S=sqrt(vl)*sqrt((t-1)*F_value)
print(S)
# critcal value
l=abs(0*y1bar+y2bar-y3bar+0*y4bar+0*y5bar)
print(l)
if(S<l){
  print("  contrasts are significantly different from zero")
  
}else{
  print(" contrasts are not significantly different from zero")
}

a=c(0,0,0,1,-1)# Chm1 vs. Chm2
# test statistic
vl=sw2*((a[1]^2+a[2]^2+a[3]^2+a[4]^2+a[5]^2)/sample_size)
print(vl)
S=sqrt(vl)*sqrt((t-1)*F_value)
print(S)
# critcal value
l=abs(0*y1bar+0*y2bar+0*y3bar+y4bar-y5bar)
print(l)
if(S<l){
  print("  contrasts are significantly different from zero")
  
}else{
  print(" contrasts are not significantly different from zero")
}



