# Welcome to your first R script

# What's the difference between an R script vs the console?

# Save your R script so you can come back to it later.  

### Writing R code and comments
# This is a comment, I'm learning R!
This is not a comment and will cause an error! # the red x circle: another important part of learning R!
  
# Try it yourself, write a comment that describes the purpose of this script.

# Let's write and execute some code
2+3 # R can do math
2 + 3 # spaces don't matter here
2+3*2 # it follows standard order of operations precedence rules using PEMDAS. Within an expression, operators of equal precedence are typically evaluated from left to right -- more by searching syntax in help

help(Syntax) # one of several ways to find help about a function or package; also can use the Help tab to the right

(2+3)*2

# what answer does R give for the math question that recently broke the internet?
8/2*(2+2)

#Lesson: use parentheses to be explicit in your calculations

# R can also do more sophisticated math and other things using built in (or downloaded) functions

sqrt(25)
rnorm(10, mean = 4, sd = 0.8) #randomly generate 10 numbers with a normal distribution and mean = 4, standard deviation = 0.8. (When using random number generator functions, we will all get a different set of 10 numbers unless we set the same seed using set.seed())

set.seed(427)
rnorm(10, mean = 4, sd = 0.8) 

### Variables
# create and assign values to R objects (variables)

#Lessons on object names: 
# 1. Cannot start with a number. 
# 2. Cannot use some special symbols, like ^, !, $, @, +, -, /, or *:  
# 3. Case sensitive so Name is not the same as name.
# 4. Best to not use something already existing in R, like mean or data
# 5. More informative names are better: NU_data vs a

a <- 2+3 # if you want to save your math or anything else, you have to assign it to a variable -- do you see the entry for 'a' in your environment tab?
a
a*3 # you can do math (and other things) with variables if the type is right

b <- "baa" # the quotes here tell R this is a character/text object, called a string
b*3 # oops! need a numeric for this multiplication operator
rep(b,3) # much better, using a base R function, rep, to replicate values
rep(a,3) # works for numerics too


# We will encounter a variety of different data types during this course, and each has specific applications.
var_1 <- TRUE # a logical variable
class(var_1)
var_2 <- 32.5 # a numeric variable
class(var_2)
var_3 <- "Michael" # a character variable
class(var_3)

# There are also integer and factor types of variables. We will have an entire lesson on data types. For now, it is good to know that there are different variable types and R behavior may change based on the variable type.  

# We can assign multiple numbers to a variable, in this case, we are creating what R calls a vector - this is something else we'll learn more about in later lessons

wkdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday") # the c() combines all provided arguments into a vector. Note: All arguments are coerced to a common variable type - be careful when combining different variable types.

c <- rnorm(10, mean = 4, sd = 0.8)
mean(c) # we can do math on numeric vectors using built in (or other, downloaded) functions

## Exercise: ##
# Create a variable `nums` that includes the values 10, 20, 30, 40, and 50. Find the mean and standard deviation of `nums`.

# Solution:
nums <- c(10, 20, 30, 40, 50)
# or nums <- seq(10, 50, 10)
mean(nums) #30
sd(nums) #15.81139

# What would you need to do to find the CV of nums?
# Have to assign variables to mean and sd calculations and then do the math as sd/mean

# Usually more than one way to arrive at the same solution!

a <- 10 # be careful not to accidentally overwrite your variables
a

## Exercise: ##
# Sometimes you do want to override variables. What if you needed to add values 60, 70, and 80 to `nums`. Write the code to do that and calculate your new mean and sd.

# Solution:
nums <- c(nums, 60, 70, 80)
mean(nums)
sd(nums)

# did you notice the details change in your environment pane?

# You can remove objects with the rm() function:
rm(nums) # gone from the Environment

# You can also remove ALL objects using the broom icon in the Environment pane

### Using packages
# Let's write some code to install a sweet R package, praise. We will then invoke the package and use a function from it. :)

# Watch the console and your RStudio panels to observe what happens. What changed?

install.packages("praise") # the first time you use a package (or after you update R)
library(praise) # when you want to use the package for the first time *in an R session*

# How can you learn about what the package does and how to use it's functions? Check ou the Help tab to the right. Let's search for praise.

# So we see the praise package includes a function called praise. The only argument for this function is called template. The documentation says random words from the praise word lists built into the package are used to replace parts of the template. The default template is "You are ${adjective}!"). Based on this what do you think is the output from executing praise()?

# Let's see.

praise()
# Where do you find the output? What output did you get? 

# What if we want to extend beyond the default and add something more to the output? What other parts of speech can we use to modify the template?

praise("${EXCLAMATION}! How ${adjective}! You ${created} a functioning R script!")
