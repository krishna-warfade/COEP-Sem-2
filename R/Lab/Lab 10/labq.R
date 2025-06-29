#PRACTICE QUESTIONS
type1 <- c(25, 45, 50, 30, 70, 42, 36, 48, 34)
type2 <- c(16, 10, 70, 50, 20, 95, 55, 42)
var1 <- var(type1)
var2 <- var(type2)
var.test(type1, type2, alternative = "two.sided", conf.level = (1 - 0.02))
f_value <- var1 / var2
f_value
2 * pf(f_value, 8, 7) #manually = correct, lower.tail = T, since unsymm. graph

#Q1.
one <- c(66, 67, 75, 76, 82, 84, 88, 90, 92)
two <- c(64, 66, 74, 78, 82, 85, 87, 92, 93, 95, 97)
var.test(two, one, alternative = "two.sided", conf.level = (1 - 0.10))
f <- var(two)/var(one)
2 * pf(f, 10, 8)
cat("Reject H0")

#Q2.
f <- 6.1^2 / 5.3^2
1 - pf(f, 10, 13)
cat("Reject H0")

#Q3.
f_val <- 109.63 / 65.99
f_val
2 * pf(f_val, 40, 20)
cat("Failed to reject H0")

#HW QUESTIONS
#Q1.
a <- c(13, 15, 18, 20, 22, 9, 16)
b <- c(21, 18, 20, 16, 9)
var.test(a, b, alternative = "two.sided", conf.level = .95)
cat("Reject H0")

#Q2.
var.test(c(57, 81, 71, 85, 86, 37, 72, 51, 63), c(55, 56, 54, 45, 72, 80, 60), alternative = "greater", conf.level = (1 - .02))
f <- var(A) / var(B)
1 - pf(f, 8, 6)
cat("Reject H0")

#Q3.
v <- c(5, 7, 4, 8, 11, 9, 6)
w <- c(10, 12, 13, 9, 15, 8, 9)
t.test(w, v, alternative = "greater", var.equal = TRUE)
cat("Reject H0")

#Q4.
f <- var(c(37, 42, 34, 37, 35)) / var(c(28, 31, 26, 27, 23, 38, 37))
f
1 - pf(f, 4, 6)
var.test(o, s, conf.level = 0.95, alternative = "greater")
cat("Failed to reject H0")
