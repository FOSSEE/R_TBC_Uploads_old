x <- c(5,0,3,0,2,0,0,2,0,0)
y <- c(3,0,2,0,1,1,0,1,0,1)


 
x_square<-sqrt(5^2+0^2+3^2+0^2+2^2+0^2+0^2+2^2+0^2+0^2)


 
y_square<-sqrt(3^2+0^2+2^2+0^2+1^2+1^2+0^2+1^2+0^2+1^2)




Consine <- ((sum(x*y))/(x_square*y_square))


##### Text Book answer is 0.94
print(Consine)




