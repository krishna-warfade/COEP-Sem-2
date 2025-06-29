#Chi-Square Dist.
#Q1.
x <- c(70, 80, 35, 50, 20, 45)
y <- matrix(x, nrow = 3, ncol = 2)
rt = chisq.test(y, correct = F)
rt

#Q2.
mt <- c(236, 157, 19, 16)
k = matrix(mt, nrow = 2, ncol = 2)
rt = chisq.test(k, correct = F)
rt

#Q3.
x <- c(100, 140, 70, 60, 30, 20)
l = matrix(x, nrow = 2, byrow = F)
rt = chisq.test(x, correct = F)
rt

#Q4.
x <- c(7, 15, 20, 8)
j = matrix(x, nrow = 2)
rt = chisq.test(j, correct = F)
rt

#Q5.
x <- c(23, 17, 13, 35, 30, 28)
y <- matrix(x, nrow = 3, byrow = TRUE)
rt <- chisq.test(y, correct = F)
rt

#Sign Tests
#Q1.
x <- c(9, 12, 18, 14, 12, 10, 16, 14, 15, 13, 11, 9, 11)
m0 <- 12
d <- x - 12
sp <- length(d[d > 0])
sn <- length(d[d < 0])
n <- sn + sp
pv <- 2 * pbinom(sn, n, 0.5)
alpha <- 0.02
if (pv > alpha) {
  cat("Failed to reject H0")
} else {
  cat("Reject H0")
}

#Q2. H1: m0 > 250
x <- c(271, 230, 198, 275, 282, 225, 284, 219, 253, 216,
       262, 288, 236, 291, 253, 224, 264, 295, 211, 252,
       294, 242, 272, 268)
sp <- length(x[x > 250])
sn <- length(x[x < 250])
n <- sn + sp
pbinom(sn, n, 0.5)

#Q3.
obs <- c(98.38,115.33,98.62,114.38,87.79,84.06,96.18,98.74,91,107.82,108.28,112.62,124.18,101.99,112.51,75.65,83.77,84.91
         ,109.73,109.41,100.4,95.37,115.46,111.78,86.13,82.14,78.47,98.18)
diff <- obs - 100
rt = wilcox.test(diff, alternative = "greater")
alpha <- 0.05
if (rt$p.value < alpha) {
  cat("Reject H0")
} else {
  cat("Failed to reject H0")
}
#Q4. m0 = 700, a/2 = 0.05
y <- c(700, 650, 800, 975, 855, 785, 759, 640, 950, 715, 825, 
       980, 895, 1025, 850, 915, 740, 985, 770, 785, 700, 925)
sp <- length(y[y > 700])
sn <- length(y[y < 700])
n <- sp + sn
pv <- 2 * pbinom(min(sn, sp), n, 0.5)
alpha <- 0.10
if (pv < alpha) {
  cat("Reject H0")
} else {
  cat("Failed to reject H0")
}
#Q5.
z <- c(25, 19, 38, 52, 57, 39, 46, 46, 30, 49, 27, 39, 44, 63, 31, 67, 42)
m0 <- 41
sp <- length(z[z > m0])
sn <- length(z[z < m0])
n <- sn + sp
pv <- 2 * pbinom(sn, n, 0.5)
alpha <- 0.05
if (pv < alpha) {
  cat("Reject H0")
} else {
  cat("Failed to reject H0")
}
#Q6.
before <- c(3,5,2,3,3,3,0,4,1,6,4,1)
after <- c(1,2,0,2,2,0,2,3,3,4,1,0)
d <- before - after
sp <- length(d[d > 0])
sn <- length(d[d < 0])
n <- sn + sp
pv <- pbinom(min(sp, sn), n, 0.5)
alpha <- 0.05
if (pv < alpha) {
  cat("Reject H0")
} else {
  cat("Failed to reject H0")
}
#Q7.
t <- c(1.5, 2.2, 0.9, 1.3, 2.0, 1.6, 1.8, 1.5, 2.0, 1.2, 1.7)
rt <- wilcox.test(t, mu = 1.8, alternative = "two.sided", exact = TRUE)
alpha <- 0.05
if (rt$p.value < alpha) {
  cat("Reject H0")
} else {
  cat("Failed to reject H0")
}
#Q8.
obs <- c(17,15,32,28,12,26,25,25,35,24)
m0 <- 20
rt = wilcox.test(obs, mu = m0, alternative = "less")
alpha <- 0.05
if (rt$p.value < alpha) {
  cat("Reject H0")
} else {
  cat("Failed to reject H0")
}

