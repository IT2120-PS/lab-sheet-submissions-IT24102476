setwd('C:\\Users\\Nuhad\\Documents\\Probability and Statistics\\Lab\\IT24102476_lab7')
getwd()

# Q1
p1 <- punif(25, min=0, max=40) - punif(10, min=0, max=40)
p1

#Q2
p2 <- pexp(2, rate=1/3)
p2

#Q3
#(i). Probability of IQ > 130
p3_i <- 1 - pnorm(130, mean=100, sd=15)
p3_i

#(ii). 95th percentile of IQ score
p3_ii <- qnorm(0.95, mean=100, sd=15)
p3_ii