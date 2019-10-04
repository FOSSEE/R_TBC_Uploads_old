f <- function(x) {
  x-cos(x)
}

x1=0

if (f(x1)<0){
  x2=x1+0.001
  while (f(x2)<0){
    x2=x2+0.001
  }
  } else if(f(x1)>0){
    x2=x1+0.001
    while (f(x2)>0){
      x2=x2+0.001
    }
  } else{
    cat("The root is=",x1)
  }

x=x2-(x2-x1)*f(x2)/(f(x2)-f(x1))
cat("The root is=",x)