myfun = function(x,y) (2*exp(-x)*exp(-2*y))
llimx =  1
ulimx = Inf

llimy = 0
ulimy = 1

f = function(){
  return(integrate(function(y) { 
    sapply(y, function(y) {
      integrate(function(x) myfun(x,y), llimx, ulimx)$value
    })
  }, llimy, ulimy))
}
ans = f()$value
print(ans)