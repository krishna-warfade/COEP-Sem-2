#Vectors
#Numeric vectors
nums <- c(1, 2, 3, 4)

#Character vectors
fruits <- c("Apple", "Banana", "Mango")

#Generate sequence
numbers <- c(-2 : 5)
numsDeci <- c(1.5 : 5.5)
numsDeci
logical_val <- c(TRUE, FALSE, TRUE)
logical_val
#To find length of variables
length(numbers)
length(fruits)
length(logical_val)

#To generate sequence using replication : rep()
replicate <- rep(c(1, 2, 3), 4) #Print this seq 4 times, rep(c(1, 2, 3), times = 4)
length(replicate)
sequence <- seq(2, 100, 2) #seq(start, end, difference)
replicate
sequence
rep(c(1, 2, 3), each = 4)
# Output: 1 1 1 1 2 2 2 2 3 3 3 3
rep(c(1, 2, 3), length.out = 8)  
# Output: 1 2 3 1 2 3 1 2 (truncates after 8 elements)