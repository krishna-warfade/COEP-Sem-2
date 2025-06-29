# 1. Numeric Vector
nums <- c(1, 2, 3, 4)
print(nums)
# Output: [1] 1 2 3 4

# 2. Character Vector
chars <- c("apple", "banana", "cherry")
print(chars)
# Output: [1] "apple" "banana" "cherry"

# 3. Mixing Types (Character and Numeric)
mix <- c(1, "apple", 3)
print(mix)
# Output: [1] "1" "apple" "3"
# R coerces everything into character type

# 4. Combining Other Objects
x <- c(1, 2)
y <- c(3, 4)
combined <- c(x, y)
print(combined)
# Output: [1] 1 2 3 4