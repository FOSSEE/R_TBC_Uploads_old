#Digital Channel(Pg no. 89)

error_prob = 0.1
n = 10
n_error = 3
ans = dnbinom((n-n_error-1),(n_error+1),error_prob)

cat("Answer is",ans)