cat("prob of exactly 1 plugging malfunction", (0.096*0.904*0.904)+(0.904*0.096*0.904)+(0.904*0.904*0.096))
cat("prob of atleat 1 plugging malfunction", 1-(0.904*0.904*0.904))
cat("prob of exactly two plugging malfunctions when atleat 1 is due to plugging", 
    ((0.096*0.096*0.904)+(0.096*0.904*0.096)+(0.904*0.096*0.096))/(1-(0.904*0.904*0.904)))