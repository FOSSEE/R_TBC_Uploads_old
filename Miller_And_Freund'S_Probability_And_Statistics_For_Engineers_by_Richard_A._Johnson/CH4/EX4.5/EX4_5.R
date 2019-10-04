P=0.05#probability
n=16
#(a)at most two will fail
pbinom(2,16,P)
#(b) at least four will fail
1-pbinom(3,16,P)
