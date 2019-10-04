# Statistics for Management and Economics by Gerald Keller
# Chapter 6: PROBABILITY
# Example 6.10 on Pg. 203
# Probability of Prostate Cancer

#Given:
#Prior: P(Has Prostrate Cancer) = .010
#Given Likelihood probabilities
#True negative:    P(Negative test GIVEN No Prostrate Cancer) = 1 - .135 = .865 
#False positive:   P(Positive test GIVEN No Prostrate Cancer) = .135 
#True positive:    P(Positive test GIVEN Prostrate Cancer) = 1 - .300 = .700 
#False negative:   P(Negative test GIVEN Prostrate Cancer) = .300


#Function 'bayes_probability_tree' that creates a Probability Tree using Bayes Theorem

install.packages("DiagrammeR")
library(DiagrammeR)

bayes_probability_tree <- function(prior, true_positive, true_negative) {
  
  if (!all(c(prior, true_positive, true_negative) > 0) && !all(c(prior, true_positive, true_negative) < 1)) {
    stop("probabilities must be greater than 0 and less than 1.",
         call. = FALSE)
  }
  c_prior <- 1 - prior
  c_tp <- 1 - true_positive
  c_tn <- 1 - true_negative
  
  round4 <- purrr::partial(round, digits = 4)
  
  b1 <- round4(prior * true_positive)
  b2 <- round4(prior * c_tp)
  b3 <- round4(c_prior * c_tn)
  b4 <- round4(c_prior * true_negative)
  
  bp <-  round4(b1/(b1 + b3))
  
  labs <- c("Cancer", prior, c_prior, true_positive, c_tp, true_negative, c_tn, b1, b2, b4, b3)
  
  tree <-
    create_graph() %>%
    add_n_nodes(
      n = 11,
      type = "path",
      label = labs,
      node_aes = node_aes(
        shape = "circle",
        height = 1,
        width = 1,
        x = c(0, 3, 3, 6, 6, 6, 6, 8, 8, 8, 8),
        y = c(0, 2, -2, 3, 1, -3, -1, 3, 1, -3, -1))) %>% 
    add_edge(
      from = 1,
      to = 2,
      edge_aes = edge_aes(
        label = "Has Prostrate Cancer"
      )
    ) %>% 
    add_edge(
      from = 1, 
      to = 3,
      edge_aes = edge_aes(
        label = "Does not have Prostrate Cancer"
      )
    ) %>% 
    add_edge(
      from = 2,
      to = 4,
      edge_aes = edge_aes(
        label = "True Positive: Positive test GIVEN Cancer"
      )
    ) %>% 
    add_edge(
      from = 2,
      to = 5,
      edge_aes = edge_aes(
        label = "False Negative: Negative test GIVEN Cancer"
      )
    ) %>% 
    add_edge(
      from = 3,
      to = 7,
      edge_aes = edge_aes(
        label = "False Positive: Positive test GIVEN NO Cancer "
      )
    ) %>% 
    add_edge(
      from = 3,
      to = 6,
      edge_aes = edge_aes(
        label = "True Negative: Negative test GIVEN NO Cancer"
      )
    ) %>% 
    add_edge(
      from = 4,
      to = 8,
      edge_aes = edge_aes(
        label = "="
      )
    ) %>% 
    add_edge(
      from = 5,
      to = 9,
      edge_aes = edge_aes(
        label = "="
      )
    ) %>% 
    add_edge(
      from = 7,
      to = 11,
      edge_aes = edge_aes(
        label = "="
      )
    ) %>% 
    add_edge(
      from = 6,
      to = 10,
      edge_aes = edge_aes(
        label = "="
      )
    ) 
  message(glue::glue("The probability that the man has prostate cancer given a positive test result is {bp}"))
  print(render_graph(tree))
  invisible(tree)
}

bayes_probability_tree(prior = 0.01, true_positive = 0.7, true_negative = (1-0.135))

#End
