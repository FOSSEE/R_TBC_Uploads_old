#Ceramic Substrate(Pg no. 696)

defectives = c(44,48,32,50,29,31,46,52,44,48,36,52,35,41,42,30,46,38,26,30)
samples = 20
size = 100
total_size = samples*size

pbar = sum(defectives)/total_size
pbar

UCL = pbar + (3*sqrt((pbar*(1-pbar))/size))
cat("UCL =",UCL)

LCL = pbar - (3*sqrt((pbar*(1-pbar))/size))
cat("LCL =",LCL)

CL = pbar
cat("CL =",CL)

# The answer may slightly vary due to rounding off values