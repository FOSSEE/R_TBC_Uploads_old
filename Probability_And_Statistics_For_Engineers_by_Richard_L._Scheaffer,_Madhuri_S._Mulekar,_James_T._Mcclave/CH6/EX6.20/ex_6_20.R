percentile =c(5,10,20,30,40,50,60,70,80,90,95,99.9)
z_score =(qnorm(percentile /100))

florida =c(180.448,198.383,220.102,235.762,249.11,261.651,278.539,303.200,324.918,342.853,414.209)

qqnorm(florida,ylim = c(150,500),xlim =c(-3,3))
qqline(florida)

nebraska =c(165.275,178.736,195.036,206.79,216.832,226.219,235.606,245.649,257.402,273.702,287.163,340.716)

qqnorm(nebraska,ylim = c(100,350),xlim=c(-3,3))
qqline(nebraska)
