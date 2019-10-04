                                  # Page no. : 182

# Tabular Approach for Bayes' Theorem

events <- c("A1","A2")
prior_probabilities <- c(0.65,0.35)

conditional_probabilities <- c(0.02,0.05)

joint_probabilities <- prior_probabilities * conditional_probabilities

total_joint_probability <- sum(joint_probabilities)

posterior_probabilities <- joint_probabilities / total_joint_probability

DF <- data.frame(events,prior_probabilities,conditional_probabilities
                 ,joint_probabilities,posterior_probabilities)

View(DF)

cat("Total posterior probability is",sum(DF$posterior_probabilities))