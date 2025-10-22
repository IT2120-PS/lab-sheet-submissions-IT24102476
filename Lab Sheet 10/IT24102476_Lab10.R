setwd("C:\\Users\\Nuhad\\Documents\\Y2S1\\Probability and Statistics\\Lab\\IT24102476_Lab10")
getwd()

#Part1
#The vending machine owner believes that customers choose each of the four snack types equally, with a probability of 0.25 for each.
#The alternative hypothesis states that at least one snack type has a different probability of being chosen.

#Part2
#To test the null hypothesis, a chi-squared goodness of fit test should be conducted.
observed <- c(120, 95, 85, 100)
prob <- c(.25, .25, .25, .25)
chisq.test(x=observed, p=prob)

#Part3
#The test is conducted at a 5% level of significance.
#Rejection rule: If the p-value is less than 0.05, the null hypothesis is rejected at the 5% significance level.
#The p-value obtained from the test is 0.08966.
#Conclusion: Since the p-value (0.08966) is greater than 0.05, the null hypothesis is not rejected at the 5% level of significance. 
#Therefore, it can be concluded that customers choose among the four snack types with equal probability, 0.25.