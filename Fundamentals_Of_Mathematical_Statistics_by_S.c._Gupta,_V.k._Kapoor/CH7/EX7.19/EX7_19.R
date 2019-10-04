#Page number--7.34
#Example number--7.19

EX=(1+2+3+4+5+6)/6
EX
EX2=(1^2+2^2+3^2+4^2+5^2+6^2)/6
EX2
VarX=EX2-EX^2
VarX
#By Chebychev's inequality
k=2.5
#P{|X<u|>2.5}<T
T=VarX/k^2
T
#But since the number lies outside the limits
#It cannot lie outside the limits of 1 and 6
#Actual probability = 0