 # for clinic 1
r1=c(50,50)
c1=c(55,45)

# for clinic 2
r2=c(50,50)
c2=c(55,45)

# for clinic 3
r3=c(50,50)
c3=c(74,26)
nh=100
# The numerator of the CMH statistic
N=((40-((r1[1]*c1[1])/nh))+(35-((r2[1]*c2[1])/nh))+(43-((r3[1]*c3[1])/nh)))^2
print(N)

D=((r1[1]*r1[2]*c1[1]*c1[2])/(nh^2*(nh-1)))+((r2[1]*r2[2]*c2[1]*c2[2])/(nh^2*(nh-1)))+((r3[1]*r3[2]*c3[1]*c3[2])/(nh^2*(nh-1)))
print(D)

X2=N/D
print(X2)
# For df = 1, this result is significant at the p < .001 level. the drug-treated groups have consistently higher improvement rates than the placebo groups.