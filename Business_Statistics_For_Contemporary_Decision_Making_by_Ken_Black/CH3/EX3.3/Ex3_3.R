# Quartiles :

Category <- c("Automotive","Personal Care","Entertainment & Media",
              "Food","Drugs", "Electronics","Soft Drinks","Retail","Cleaners",
              "Restaurants","Computers","Telephone","Financial",
              "Beer Wine & Liquor","Candy","Toys")

Ad_spending <- c(22195,19526,9538,7793,7707,4023,3916,3576,3571,3553,3247,2488,
                 2433,2050,1137,699)

advertise_age <- cbind(Category,Ad_spending)
View(advertise_age)

N=16

# Q1 = P25 is found by :
i = 25/100*N
i

#Q3 = P75 is solved by :
i1 =75/100*(N)
i1

# Quantile :
quantile(Ad_spending)






