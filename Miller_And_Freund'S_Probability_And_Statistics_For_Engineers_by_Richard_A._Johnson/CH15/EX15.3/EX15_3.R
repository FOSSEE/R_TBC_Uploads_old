n = 100 
x = 1.507 
s = 0.004
P=0.95#praportion
K = 2.335#With n=100 sample size and p=0.95 
#The resulting tolerance interval is
Int1=x-K*s
Int2=x+K*s
L=c(Int1,Int2)
message("We assert, with 99% confidence, that at least 95 % of springs have free lengths from
1.497 to 1.517 inches")