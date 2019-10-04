#page no. 30
#example 2-11

alpha_t=function(t){3*10^-9*t^2*(100-t)^2}   #this is the function alpha(t)

p_A=integrate(alpha_t, lower = 60,upper = 70)     #p{60<=t<=70}
p_M=integrate(alpha_t, lower = 60,upper = 100)    #p{60<=t<=100}

p_AM=p_A$value/p_M$value       #condition probability of event A after even M has happened 

print(p_AM)

