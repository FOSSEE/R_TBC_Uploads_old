#Covariance(Pg no. 176)
x = c(0,1,1,2,2,3)
y = c(0,1,2,1,2,3)
w = c(0.2,0.1,0.1,0.1,0.1,0.4)

E_xy = 0.0
for(i in 1:length(x))
{
  E_xy = E_xy + (x[i]*y[i]*w[i])
}

E_x = 0*0.2+1*0.2+2*0.2+3*0.4
E_x
V_x = ((0-E_x)^2*0.2)+((1-E_x)^2*0.2)+((2-E_x)^2*0.2)+((3-E_x)^2*0.4)
E_y = E_x
V_y = V_x
V_x

sigma_xy = E_xy - E_x*E_y
sigma_xy

p_xy = sigma_xy/(sqrt(V_x)*sqrt(V_y))
round(p_xy,digits = 3)