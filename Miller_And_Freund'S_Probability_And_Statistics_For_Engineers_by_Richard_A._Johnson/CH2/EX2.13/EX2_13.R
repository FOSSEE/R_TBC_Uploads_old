#Coefficient of varience
#a)first micrometer observation
mean=3.92
sd=0.015
CV=sd/mean*100
CV
#a)second micrometer observation
mean2=1.54
sd2=0.008  
CV2=sd2/mean2*100  
CV2
if(CV2>CV)
  {
  print("measurment mead by first micrometer is more precise")
}else
{
  print("measurment mead by second micrometer is more precise")
}