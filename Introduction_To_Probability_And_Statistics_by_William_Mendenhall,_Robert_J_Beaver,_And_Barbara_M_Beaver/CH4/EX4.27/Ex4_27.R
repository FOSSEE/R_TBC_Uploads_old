gain<-c(-20,23980)
prob_gain<-c((7998/8000),(2/8000))
prob_gain
expected_gain <- weighted.mean(gain, prob_gain)
#expected_gain is in dollar
cat("expected gain per lottery would be a loss of",expected_gain)
