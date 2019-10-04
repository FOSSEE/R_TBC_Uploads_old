X<-c(2.2,3.4,1.6,0.8,2.7,3.3,1.6,2.8,2.5,1.9)
upperlimX = 3
lowerlimX = 2
upperlimlogX= log(upperlimX)
lowerlimlogX = log(lowerlimX)

logX = log(X)
samplemean= mean(logX)
samplesd= sqrt(var(logX))
samplemean
samplesd
prob = pnorm(upperlimlogX, samplemean, samplesd) - pnorm(lowerlimlogX, samplemean, samplesd)
prob