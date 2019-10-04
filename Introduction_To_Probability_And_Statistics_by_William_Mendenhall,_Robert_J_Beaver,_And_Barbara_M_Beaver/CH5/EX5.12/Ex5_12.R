total_items <- 20;
sample_items <- 5;
defective <- 4;
prob_accept_lot <- choose(defective,0) * choose(total_items - defective,(sample_items - 0))/choose(total_items,sample_items) + choose(defective,1) * choose(total_items - defective,(sample_items - 1))/choose(total_items,sample_items)
cat("probability of get accepted is",prob_accept_lot)
