rnorm(10)
a <- 4

#This code is showing us how to use an R script.
new_var <- seq(0, 10, 1)

2+3
2 + 3*2
(2+3)*2

sqrt(25)
b <- 25

sqrt(b)
nums <- rnorm(10, sd = 2, mean = 1)
mean(nums)
sd(nums)

rm(nums)


set.seed(714)
rnorm(10)

b <- "baa"
c <- 'too'

b*4

rep(b, 4)

a <- 5
rep(a, 4)

d <- TRUE
e <- FALSE

class(d)

wkdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")


new_wkdays <- c(wkdays, 365, TRUE)
new_wkdays


## Exercise: ##
# Create a variable `nums` that includes the values 10, 20, 30, 40, and 50. Find the mean and standard deviation of `nums`.

nums <- c(10, 20, 30, 40, 50)
avg <- mean(nums)
std <- sd(nums)


nums <- seq(10, 50, 10)

# What would you need to do to find the CV of nums?
cv <- std/avg



## Exercise: ##
# Sometimes you do want to override variables. What if you needed to add values 60, 70, and 80 to `nums`. Write the code to do that and calculate your new mean and sd.

new_nums <- c(nums, 60, 70, 80)
nums <- c(nums, 60, 70, 80)
mean(new_nums)
sd(new_nums)


install.packages("praise")
library(praise)
praise()
help(praise)

praise("${EXCLAMATION}! We are all ${adjective}!")

new_nums <- c(nums, NA, 30)
mean(new_nums, na.rm = TRUE)

