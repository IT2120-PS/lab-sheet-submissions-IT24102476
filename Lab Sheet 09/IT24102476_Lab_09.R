setwd("C:\Users\Nuhad\Documents\Y2S1\Probability and Statistics\Lab\IT24102476_Lab9")
data <- rnorm(25, mean = 45, sd = 2)
data

result <- t.test(data, mu = 46, alternative = "less")


result

