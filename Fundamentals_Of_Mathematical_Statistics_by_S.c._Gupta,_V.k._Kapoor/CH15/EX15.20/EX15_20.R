#Page number--15.36
#Example number--15.20

E86=126*200/300
E60=93*200/300
E44=69*200/300

Researcher=c("X","Y")
bavg=c(E86,126-E86)				# Below Average
avg=c(E60,93-E60)					# Average
aavg=c(E44,69-E44)				# Above Average
genius=c(200-192,12-8)
data.frame(Researcher,bavg,avg,aavg,genius)

f=c(86,60,44,10,40,33,25,2)
e=c(84,62,46,8,42,31,23,4)   	 
a=(f-e)^2
b=round(a/e,3)
data.frame(f,e,a,b)

x=sum(b[1:6])
x
sprintf("No difference in sampling techniques used by two researchers")
