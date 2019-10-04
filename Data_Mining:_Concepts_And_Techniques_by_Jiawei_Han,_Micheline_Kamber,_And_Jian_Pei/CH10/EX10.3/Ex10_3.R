
 library(cluster)

data(iris)

print("Agglomerative Clustering")
agn_hiclu <- agnes(iris, metric = "manhattan", stand = TRUE)
print(agn_hiclu)
plot(agn_hiclu)



print("#######################################################")



data(iris)
print("Devisive Clustering")
divisive_clu <- diana(iris, metric = "manhattan", stand = TRUE)
print(divisive_clu)
plot(divisive_clu)