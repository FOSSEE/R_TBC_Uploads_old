# Test data is whether in Poisson distributed :

no_of_arrival <- c(0,1,2,3,4,5)
obs_freq <- c(7,18,25,17,12,5)

# chi square value when alpha = 0.05 :
qchisq(.95,4)

for(i in 1:6){
  arr_obs <- no_of_arrival*obs_freq
}
print(arr_obs)

l = sum(arr_obs)/sum(obs_freq)
l # lambda

# Expected probability using lamba and no_of_arrival :
exp_pb <- c(.1003,.2306,.2652,.2033,.1169,.0837)

for(i in 0:5){
  exp_freq = sum(obs_freq)*exp_pb
}
print(exp_freq)

no_of_arrival <- cbind(no_of_arrival,obs_freq,arr_obs,exp_pb,exp_freq)
no_of_arrival

for(i in 0:5){
  X = (obs_freq-exp_freq)^2/exp_freq
}
print(X)
sum(X)