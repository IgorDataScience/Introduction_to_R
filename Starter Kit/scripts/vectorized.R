# Vectorised Operations

# Two vectors can be added, subtracte, multiplied or divided
# take care that they are of the same length, otherwise you will
# get a warning message

first <- c(1:10)
second <- seq(from = 10, to = 19, by = 1) # or seq(10, 19, 1)

print(first + second)
print(first - second)
print(first * second)
print(first / second)

# Notice that elements are evaluated against eachother
# (i.e. first element vs first, second vs second etc.)

# A constant can be added, subtracted etc. form a vector
print(first + 1)
print(first - 1)
print(first * 10)
print(first / 10)

# Same behavious applies to matrices

mat1 <- matrix(1:9, 3, 3)
mat2 <- matrix(10:18, 3, 3)

print(mat1 + mat2)
print(mat1 - mat2)
print(mat1 * mat2)
print(mat1 / mat2)

# For real matrix multiplication use %*%
print(mat1 %*% mat2)

# Notice that the colon operator creates sequence of integers
# It is in the form: first_number:last_number
1:10

# If you want sequence with a step different than 1, use seq()
seq(1, 3, 0.1)
seq(10, 1, -0.2)

# You can also create a sequence of repeating numbers using rep()
rep(10, 2)

# To clear Environment of all variable use:
rm(list=ls())