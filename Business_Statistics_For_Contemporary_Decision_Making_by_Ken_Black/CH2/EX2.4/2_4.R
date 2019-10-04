# Scatter Plot :
Residential <- c(169635,155113,149410,175822,162706,134605,195028,231396,234955,
                 266481,267063,263385,252745,228943,197526,232134,249757,274956,
                 251937,281229,280748,297886,315757)

Non_residential <- c(96497,115372,96407,129275,140569,145054,131289,155261,178925,
                     163740,160363,164191,169173,167896,135389,120921,122222,127593,
                     139711,153866,166754,177639,175048)

home <- cbind(Residential,Non_residential)
View(home)

# Scatter plot :
plot(Residential, Non_residential,xlab="Residential",ylab="Non-Residential") 

