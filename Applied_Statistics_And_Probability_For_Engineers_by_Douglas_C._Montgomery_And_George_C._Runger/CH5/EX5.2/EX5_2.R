#Server Access Time(Pg no. 158)

fnc = function(x) {(exp((-(0.002*x)-(0.001*x))))/(0.002)}

an1 = integrate(fnc, 0, Inf)$value
an1 = an1*6*10^(-6)
an1