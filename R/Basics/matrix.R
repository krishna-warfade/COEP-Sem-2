# R program to create a matrix

A = matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), 3, 3, byrow = TRUE) #Taking sequence
# of elements, nrow, ncol, # By default matrices are in column-wise order

# Naming rows
rownames(A) = c("a", "b", "c")

# Naming columns
colnames(A) = c("c", "d", "e")

cat("The 3x3 matrix:\n")
print(A)
dim(A)

# special matrices

# Diagonal matrix having 3 rows and 3 columns
# filled by array of elements (5, 3, 3)
print(diag(c(5, 4, 3), 3, 3)) 


# Identity matrix having
# 3 rows and 3 columns
print(diag(1, 3, 3)) 
