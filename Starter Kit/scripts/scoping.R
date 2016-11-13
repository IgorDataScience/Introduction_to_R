# Scoping Rules

# The search list for R environment can be found by using:
search()

# An example of lexical scoping:
z <- 27

myFun <- function(x, y) {
  (x * y) / z
}

myFun(3, 9)

# Lexical scoping can be understood best by nested functions
# If a function is nested, then its parent environment is the
# function in which it is nested
customRoot <- function(n) {
  root <- function(x) {
    x ^ (1/n)
  }
  root # return value of root function
}

squareRoot <- customRoot(2)
fiveRoot <- customRoot(5)

squareRoot(25)
fiveRoot(25)

# Lexical Scoping vs. Dynamic Scoping
env <- 27

f <- function(num) {
  env <- 2
  env ^ 2 + g(num)
}

g <- function(num) {
  num * env
}

# Can you predict value of f(2) before hitting ctrl + enter?
f(2)