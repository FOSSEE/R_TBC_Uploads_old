#Chemical Process Concentration CUSUM Tabular Cusum(Pg no. 706)

obs = c(102.0,94.8,98.3,98.4,102.0,98.5,99.0,97.7,100.0,98.1,101.3,98.7,101.1,98.4,97.0,96.7,100.3,101.4,97.2,101.0)
Sh_0 = 0
Sl_0 = 0
u0 = 99
k = 1

Sh_1 = max(0, obs[1]-(u0+k)+Sh_0)
Sh_1
Sl_1 = max(0, (u0-k)-obs[1]+Sh_0)
Sl_1