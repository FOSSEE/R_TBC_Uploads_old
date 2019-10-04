# range
accounts_due<-c(55.20,  4.88 ,271.95,
                18.06, 180.29, 365.29,
                28.16, 399.11 ,807.80,
                44.14, 97.47, 9.98,
                61.61, 56.89 ,82.73)
range(accounts_due)
diff=max(accounts_due)-min(accounts_due)
print(diff)