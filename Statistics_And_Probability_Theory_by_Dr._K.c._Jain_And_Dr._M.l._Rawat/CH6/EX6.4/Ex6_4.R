#Example 4 chapter 6 page no. 240
n=11
X=c(45,55,56,58,60,65,68,70,75,80,85)
u=X-rep(65,11)
y=c(56,50,48,60,62,64,65,70,74,82,90)
v=y-rep(65,11)
ubar=mean(u)
vbar=mean(v)
var_u=(sum(u*u))/n - (ubar^2)
var_v=(sum(v*v))/n - (vbar^2)
var_uv=(sum(u*v))/n - ubar*vbar
r = var_uv / (sqrt(var_u*var_v))
cat("corr coeff is ",r)     #answer given in book is wrong (calculation error)
