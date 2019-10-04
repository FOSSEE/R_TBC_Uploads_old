# Example : 1   Chapter : 4.2     Page No: 208
# Projection of the vector onto line

#Answers to this problem are displayed in the form of x/y in textbook
#Here the same answers are in decimal formats

projection<-function(b,a){
  xhat<-(sum(a*b))/(sum(a*a))
  p<-xhat*a
  return(p)
}
b<-c(1,1,1)
a<-c(1,2,2)
p<-projection(b,a)
print("The projection vector p i.e., b on a is ")
print(p)
e<-b-p
print("The error vector is ")
print(e)
if(sum(e*a)==0){
  print("Vector e is perpendicular to a")
}
#The  answer may slightly vary due to  rounding off values