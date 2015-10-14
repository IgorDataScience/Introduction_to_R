# Control Structures

# if/else statements
tristan <- 180
brent <- 175

if (tristan > brent) {
  print("Tristan is taller than Brent")
} else {
  print("Brent is taller than Tristan")
}

# You can use if/else statments to assign a value to a variable
answer <- if (tristan > brent) {
  "Tristan is taller than Brent"
} else {
  "Brent is taller than Tristan"
}

print(answer)

# Here is another example, using else if
x <- runif(1, 0, 15)

if (x >= 0 && x < 5) {
  print("Number is between 0 and five")
  print(x)
} else if (x >= 5 && x < 10) {
  print("Number is between five and ten")
  print(x)
} else if (x >= 10 && x <= 15) {
  print("Number is between ten and 15")
  print(x)
} else {
  print("Number is out of bounds")
  print(x)
}

# Remark: Conditions are always evaluated from left to right!!!

# for loops
# Print numbers in a sequence
for (i in 1:10) {
  print(i)
}

# Print elements of a vector
x <- seq(from = 17, to = 21, by = 1)

for (i in 1:5) {
  print(x[i])
}

# seq_along()
z <- seq(17, 21, 0.1)

for (i in seq_along(z)) {
  print(z[i])
}

# Finally, example of a nested loop:
# Consider that you have a matrix that you need to multiply
# by a constant, traditionally:
mat <- matrix(1:9, 3, 3)
const <- 3
multyMat <- matrix(rep(0,9), 3, 3) # Allocate empty matrix for result

for (i in seq_len(nrow(mat))) {
  for (j in seq_len(ncol(mat))) {
    multyMat[i, j] <- mat[i, j] * const
  }
}

print(multyMat)

# remember vectorisation of R! This can be done in one line only:
print(mat * const)

# while loop
counter <- 1

while (counter <= 10) {
  print(runif(1, 0, 10))
  counter <- counter + 1
}

# repeat, next, break (RnB)
# A demonstrative example of repeat and break:
repetitions <- 0

repeat {
  x <- runif(1, 0, 10)
  
  if (x > 0 && x < 5) {
    repetitions <- repetitions + 1
  } else {
    break
  }
}

print(repetitions) # number of repetions

# example of next
iveBeenHere <- 0

repeat {
  x <- as.integer(runif(1, 0, 10))
  
  if (x >= 5 && x <= 10) {
    next # skip this repetions
  }
  
  if (x > 0 && x < 5) {
    iveBeenHere <- iveBeenHere + 1 # how many times was this executed?
  }
  
  if (x == 0) break
}

print(iveBeenHere)

# To clear Environment of all variable use:
rm(list=ls())