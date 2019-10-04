#Find where C and D is Independ events
C=0.65#p(C)
D=0.4#P(D)
CandD=0.24
#if C and D are Independ events then CandD=p(C).P(D)
result=C*D
if(result==CandD){
  print("Events are independent")
}else{
  print("Events are dependent")
}