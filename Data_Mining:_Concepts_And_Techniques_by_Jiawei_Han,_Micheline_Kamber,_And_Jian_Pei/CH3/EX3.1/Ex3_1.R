Obs_fre <- c(250,50,200,1000)

Exp_fre <-c(90,210,360,840)

chi = sum((Obs_fre - Exp_fre)^2/(Exp_fre))


print(chi) 
