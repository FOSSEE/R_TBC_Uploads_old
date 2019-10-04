#Ex2.22, Page 69
#Answers may vary slightly due to rounding off of values

#Total no of songs
n<-100

#No of songs by the Beatles
m<-10

#Probability that the 1st Beatles song heard is the 5th song played
t<-5
p1<-(factorial(n-m)/factorial(n-m-(t-1))*m/(factorial(n)/factorial(n-t)))
cat("P(1st B is 5th song played):",p1,"\n")

#Probability that the 1st Beatles song heard is the 1st,2nd,3rd,4th or 5th song played
p2<-0
for(i in 1:5){
  p2<-p2+(choose(n-i,m-1))/(choose(n,m))
}
cat("P(1st B is 1st,2nd,3rd,4th or 5th song played):",p2,"\n")