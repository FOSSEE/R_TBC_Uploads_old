y1bar=1.175
y2bar=1.293
y3bar=1.328
y4bar=1.415
y5bar=1.500

alpha=0.05
tstar=qt(1-alpha/2,df=25)
MSError=0.0153
LSD=tstar*sqrt((2*MSError)/6)
print(LSD)

#  the 95% confidence interval for y3bar-y1bar
left_i=(y3bar-y1bar)-LSD
right_i=(y3bar-y1bar)+LSD
print("Confidence interval is")
print(left_i)
print(right_i)