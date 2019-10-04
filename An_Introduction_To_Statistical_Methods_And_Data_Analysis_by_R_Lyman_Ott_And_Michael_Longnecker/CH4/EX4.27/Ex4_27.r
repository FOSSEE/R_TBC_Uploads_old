Cholesterol_Reading=c(133,137,148,149,152,167,174,179,189,192,201,209,210,211,218,238,245,248,253,257)
normal_quantile=c(-1.96,-1.44,-1.15,-.935,-.755,-.598,-.454,-.319,-.189,-.063,.063,.189,.319,.454,.598,.755,.935,1.15,1.44,1.96)
plot(normal_quantile,Cholesterol_Reading)
model1=lm(Cholesterol_Reading~normal_quantile)
summary(model1)
 # Cholesterol = 195.5 + 39.4884 Normal Quantiles
# . The 20 points appear to be relatively close to the fitted line and thus the normal quantile plot would appear to suggest that the normality of the population distribution is plausible.

