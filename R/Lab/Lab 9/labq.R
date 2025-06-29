#Q1.
z1 <- (10.2 - 10) / (2.25 / sqrt(400))
p_value1 <- 2 * pnorm(abs(z1), 0, 1, lower.tail = F)
if(p_value1 < 0.05) {
  cat("Reject null hypothesis", '\n')
} else {
  cat("Failed to reject null hypothesis", '\n')
}

#Q2.

z2 <- (47.8 - 50) / (10 / sqrt(65))
p_value2 <- pnorm(z2, 0 , 1, lower.tail = TRUE)
if(p_value2 < 0.05) {
  cat("Reject null hypothesis", '\n')
} else {
  cat("Failed to reject null hypothesis", '\n')
}
#Q3.
z3 <- (105 - 120) / (20 / sqrt(100))
p_value3 <- 2 * pnorm(abs(z3), 0, 1, lower.tail = F)
if(p_value3 < 0.05) {
  cat("Reject null hypothesis", '\n')
} else {
  cat("Failed to reject null hypothesis", '\n')
}
#Q4.
z4 <- (67.5 - 68) / sqrt(((2.5)^2/1000) + ((2.5)^2/2000))
p_value4 <- 2 * pnorm(abs(z4), 0, 1, lower.tail = F)
if(p_value4 < 0.05) {
  cat("Reject null hypothesis", '\n')
} else {
  cat("Failed to reject null hypothesis", '\n')
}
#Q5. 
n1 <- 60; n2 <- 50; x_bar1 <- 66; x_bar2 <- 72; sigma <- 2.48
z5 <- (x_bar1 - x_bar2) / sqrt((sigma^2 / n1) + (sigma^2 / n2))
p_value5 <- pnorm(z5, 0, 1, lower.tail = TRUE)
if(p_value5 < 0.05) {
  cat("Reject null hypothesis", '\n')
} else {
  cat("Failed to reject null hypothesis", '\n')
}

#Q6. n = 12, u = 73000
salaries <- c(70000, 78000, 62000, 66000, 61000, 72000, 58000, 64000, 60000, 73000, 74000, 76000)
muo <- 73000
xbar <- mean(salaries)
S <- sqrt(var(salaries))
sbar <- S / sqrt(length(salaries))
t <- (xbar - muo) / (sbar)
p_value6 <- pt(t, 11, lower.tail = TRUE)
if(p_value6 < 0.05) {
  cat("Reject null hypothesis", '\n')
} else {
  cat("Failed to reject null hypothesis", '\n')
}

#Q7. H0 : u1 = u2, H1 : u1 != u2
A <- c(200, 210, 190, 200, 190, 200, 180, 200, 200, 210)
B <- c(190, 200, 210, 190, 180, 190, 200, 192)
muo1 <- mean(A)
muo2 <- mean(B)
s1 <- sd(A)
s2 <- sd(B)
n1 <- length(A)
n2 <- length(B)
t_val <- (muo1 - muo2) / sqrt((s1^2 / n1) + (s2^2 / n2))
df <- df <- ((s1^2/n1 + s2^2/n2)^2) / ((s1^2/n1)^2 / (n1-1) + (s2^2/n2)^2 / (n2-1))
p_value7 <- 2 * pt(abs(t_val), df, lower.tail = F)
if(p_value7 < 0.05) {
  cat("Reject null hypothesis", '\n')
} else {
  cat("Failed to reject null hypothesis", '\n')
}

#Example on Z-test

# Given data
n <- 400          # Sample size
sample_mean <- 99  # Sample mean
pop_mean <- 100    # Population mean under H₀
pop_sd <- 8        # Population standard deviation
alpha <- 0.05      # Significance level

# Calculate the z-test statistic
z_stat <- (sample_mean - pop_mean) / (pop_sd / sqrt(n))

# Calculate the critical z-value (two-tailed)
critical_z <- qnorm(1 - alpha / 2)

# Calculate the p-value (two-tailed)
p_value <- 2 * pnorm(abs(z_stat))

# Print results
cat("Z-test statistic:", z_stat, "\n")
cat("Critical z-value (two-tailed): ±", critical_z, "\n")
cat("p-value:", p_value, "\n")

# Decision rule
if (abs(z_stat) > critical_z) {
  cat("Conclusion: Reject H₀ (sample does not come from a population with mean = 100)\n")
} else {
  cat("Conclusion: Fail to reject H₀ (no evidence against the population mean = 100)\n")
}
