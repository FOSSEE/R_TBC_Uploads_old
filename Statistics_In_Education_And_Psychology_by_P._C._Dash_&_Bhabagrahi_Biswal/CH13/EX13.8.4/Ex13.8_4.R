#Page.No 13.14 - 13.17

specialist<-c(1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,2,2,2,2,2)
performance<-c(5,4,3,2,1,3,4,8,5,6,4,5,5,6,5,4,6,8,5,6,8,9,10,6,7,6,8,5,9,8)
activity<-c(1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3)
activity<-as.factor(activity)
specialist<-as.factor(specialist)
combined_groups<-data.frame(cbind(activity,specialist,performance))

# Two- way anova 
anova_results<-aov(performance~ specialist+activity+specialist*activity) # anova model specification
summary(anova_results)

# Interpretation from anova table p_value

" It can attributed that the co-curricular activities have differ significantly in their relation with selection of the specialist"

# Using F value
# Interpretation on Specialist  

Fcalculated<-1.716

# at 0.05 level of significance

Ftable_0.05<-qf(.95, df1=1, df2=24) 

if(Fcalculated > Ftable_0.05)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and their is No significance")
}

# At 0.01 level of significance 

Ftable_0.01<-qf(.99, df1=2, df2=24)

if(Fcalculated > Ftable_0.01)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and their is No significance")
}

### interpretation on activities

Fcalculated<-13.319

Ftable_0.05<-qf(.95, df1=2, df2=24)

if(Fcalculated > Ftable_0.05)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and their is No significance")
}

## Interpretation on interaction effect 

# at 0.05 level of significance 

Fcalculated<-2.397

Ftable_0.05<-qf(.95, df1=2, df2=24)

if(Fcalculated > Ftable_0.05)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and their is No significance")
}

# at 0.01 level of significance 

Ftable_0.01<-qf(.99, df1=2, df2=24)

if(Fcalculated > Ftable_0.01)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and their is No significance")
}

