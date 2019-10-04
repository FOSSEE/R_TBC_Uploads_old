#page no. 150-121
#example 5-27


E=120  #voltage
n=10^3   
sigma_square=(100^2)/3
gn=E/n

gnd=-1*E/(n^2)

gndd=2*E/(n^3)

cat("g(n)=",gn)
cat("g'(n)=",gnd)
cat("g''(n)=",gndd)

cat("E{i}=",gn,"+",gndd*sigma_square/2)              #using (5-85)
cat("sigma_i_square=",gnd^2*sigma_square)            #using (5-87)