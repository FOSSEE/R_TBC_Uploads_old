                                    # Page no. : 325 - 331

# Carrying out an Analysis of Variance 

# Page no. : 325 - 326

# Criminal Record Group

rating1 <- c(10, 7, 5, 10, 8)
n1 <- length(rating1)   # Sample 1 size
df1 <- n1 - 1   # Degree of freedom
m1 <- mean(rating1)   # Mean of rating 1
deviation1 <- rating1 - m1   # Deviation from mean 1
sq_dev1 <- deviation1 ** 2   # Squared deviation from mean 1

data_frame1 <- data.frame(rating1, deviation1, sq_dev1)
View(data_frame1)

# Clean Record Group

rating2 <- c(5, 1, 3, 7, 4)
n2 <- length(rating2)   # Sample 2 size
df2 <- n2 - 1   # Degree of freedom
m2 <- mean(rating2)   # Mean of rating 2
deviation2 <- rating2 - m2   # Deviation from mean 2
sq_dev2 <- deviation2 ** 2   # Squared deviation from mean 2

data_frame2 <- data.frame(rating2, deviation2, sq_dev2)
View(data_frame2)

# No Information Group

rating3 <- c(4, 6, 9, 3, 3)
n3 <- length(rating1)   # Sample 3 size
df3 <- n3 - 1   # Degree of freedom
m3 <- mean(rating3)   # Mean of rating 3
deviation3 <- rating3 - m3   # Deviation from mean 3
sq_dev3 <- deviation3 ** 2   # Squared deviation from mean 3

data_frame3 <- data.frame(rating3, deviation3, sq_dev3)
View(data_frame3)

var1 <- var(data_frame1$rating1)   # Variance for rating 1
var2 <- var(data_frame2$rating2)   # Variance for rating 2
var3 <- var(data_frame3$rating3)   # Variance for rating 3

cat("Variance for rating 1 is", var1)
cat("Variance for rating 2 is", var2)
cat("Variance for rating 3 is", var3)

# Figuring the within - groups estimate of the population variance

# Page no. : 326 - 327

n_g <- 3   # Number of groups
df_within <- (n1 + n2 + n3) - n_g  # Degree of freedom within-groups

var_within <- round((var1 + var2 + var3) / n_g, 2)   # Variance within-groups

cat("Variance within-groups is", var_within)

# Figuring the between - groups estimate of the population variance

# Page no. : 327 - 329

df_between <- n_g - 1   # Degree of freedom between-groups
gm <- round((m1 + m2 + m3) / n_g, 2)   # Grand mean

gm_dev <- c((m1 - gm), (m2 - gm), (m3 - gm))   # Deviation from the grand mean
sq_gm_dev <- round(gm_dev ** 2, 2)   # Squared deviation from the grand mean

d_var <- round(sum(sq_gm_dev) / df_between, 2)   # Variance for the distribution of means

cat("Variance for the distribution of means is", d_var)

N <- 5   # 5 elements in each rating
var_between <- d_var * N   # Variance between-groups

cat("Variance between-groups is", var_between)

# Figuring the F ratio

# Page no. : 329

fvalue <- round(var_between / var_within, 2)   # F ratio
cat("F ratio is", fvalue)

# Direct method to find F ratio

DF <- data.frame(rating1, rating2, rating3)
x <- c(t(as.matrix(DF)))
f <- c("r_1", "r_2", "r_3")
tm <- gl(3, 1, 5*3, factor(f))
result <- anova(lm(x ~ tm))   # Similar to aov(x ~ tm)

cat("F ratio is", round(result$`F value`[1], 2))

# F value 

# Page no. : 331

alpha <- 0.05   # 5% Sgnificance level

fval <- qf(0.95,df_between, df_within)   # 1 - alpha = 1 - 0.05 = 0.95
fval <- round(fval, 2)

if(fvalue >= fval)
{
  cat("Reject Null Hypothesis")
} else {
  cat("Cannot reject Null Hypothesis")
}