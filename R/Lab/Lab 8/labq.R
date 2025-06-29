#Graph question
k <- seq(0, 100)
plot(dchisq(k, 15))

#Q1. (i)
qchisq(p = 1 - 0.025, df = 15)
k <- seq(0, 100)
plot(dchisq(k, 15))
abline(v = qchisq(0.975, 15))

#Q1 (ii)
qchisq(1 - 0.01, 18)
k <- seq(0, 100)
plot(dchisq(k, 18))
abline(v = qchisq(0.99, 18))

#Q1 (iii)
qchisq(1 - 0.05, 25)
k <- seq(0, 100)
plot(dchisq(k, 25))
abline(v = qchisq(0.95, 25))

#Q2. n = 28, v = 27, pop_var = 4, (i) P(var > 6.1)
n <- 28
Ssq <- 6.1
sdsq <- 4
Xsq_calc <- ((n - 1) * Ssq) / (sdsq)
Xsq_calc
prob <- 1 - pchisq(Xsq_calc, 27)
prob
k <- seq(0, 100)
plot(dchisq(k, 27))
abline(v = ((28 - 1) * 6.1) / 4)

#Q2. n = 28, v = 27, pop_var = 4, (ii) P(2.168 < var < 5.749)
prob_2 <- pchisq(((n - 1)*5.749/sdsq), 27) - pchisq(((n - 1)*2.168/sdsq), 27)
prob_2
k <- seq(0, 100)
plot(dchisq(k, 27))
abline(v = ((28 - 1) * 2.168) / 4)
abline(v = ((28 - 1) * 5.749) / 4)

#Q3.
#(i)
pchisq(2.34, 6)
k <- seq(0, 40)
plot(dchisq(k, 6))
abline(v = 2.34)

#(ii)
1 - pchisq(15.34, 9)
k <- seq(0, 40)
plot(dchisq(k, 9))
abline(v = 15.34)

#(iii)
pchisq(6.6, 17) + 1 - pchisq(27.34, 17)
k <- seq(0, 40)
plot(dchisq(k, 17))
abline(v = 6.6)
abline(v = 27.34)

#(iv)
pchisq(25.41, 14) - pchisq(5.25, 14)
k <- seq(0, 40)
plot(dchisq(k, 14))
abline(v = 5.25)
abline(v = 25.41)

#(v)
qchisq(0.0333, 5)
k <- seq(0, 40)
plot(dchisq(k, 5))
abline(v = qchisq(0.0333, 5))

#(vi)
qchisq(1 - 0.125, 25)
k <- seq(0, 60)
plot(dchisq(k, 25))
abline(v = qchisq(0.875, 25))

#(vii)_(1)
qchisq((1 - 0.75)/2, 11)
k <- seq(0, 40)
plot(dchisq(k, 11))
abline(v = qchisq((1 - 0.75)/2, 11))
abline(v = qchisq(1 - ((1 - 0.75)/2), 11))

#(vii)_(2)
qchisq(1 - ((1 - 0.75)/2), 11)
#(viii)_(1)
qchisq(0.0333/2, 23)
k <- seq(0, 60)
plot(dchisq(k, 23))
abline(v = qchisq(0.0333/2, 23))
abline(v = qchisq(1 - 0.0333/2, 23))

#(viii)_(2)
qchisq(1 - 0.0333/2, 23)