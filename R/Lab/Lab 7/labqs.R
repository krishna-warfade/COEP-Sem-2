#Questions on T - Distribution

#Q1. x' = 290, u = 300, n = 15, S = 50
T <- (290 - 300)/(50/sqrt(15))
pt(T, 14)

#Q2. Population: u = 310, s.d = 50, Sample : n = 16, x' = 290
T_value <- (290 - 310) / (50/sqrt(16))
T_value

#Q3. (i) a = 0.025, v = 15
qt(1 - 0.025, 15)

#    (ii) a = 0.995, v = 17
qt(1 - 0.995, 17)

#Q4. (i) P(T < 2.365), v = 7
pt(2.365, 7)

#    (ii) P(T > - 2.567), v = 17
1 - pt(-2.567, 17)

#    (iii) P(-t0.005 < T < t0.01) = P(T < t0.01) - P(T < -t0.005), v = 20

pt(qt(1 - 0.01, 20), 20) - pt(qt(0.005, 20), 20)
#    (iv) P(k < T < 2.807) = 0.095 , n = 24 , v = 23, k = ?
#         P(T < 2.807) - 0.095 = P(T < k)
qt(pt(2.807, 23) - 0.095, 23)

#--------------------------------------------------------------------------------#

#Questions on F - Distribution

#Q1. (i) f0.05(7, 15), a = 0.05
qf(1 - 0.05, df1 = 7, df2 = 15)

#    (ii) f0.05(15, 7)
qf(1 - 0.05, df1 = 15, df2 = 7)

#    (iii) f0.99(28, 12)
qf(1 - 0.99, 28, 12)

#    (iv) f0.01(24, 19)
qf(1 - 0.01, 24, 19)

#Q2. a = 0.1, n1 = 9, n2 = 11
A <- c(66, 67, 75, 76, 82, 84, 88, 90, 92)
B <- c(64, 66, 74, 78, 82, 85, 87, 92, 93, 95, 97)
F_calc <- var(B)/var(A) #F_calculated
qf(1-0.05, 10, 8) #F_critical

#As Critical F-value > Calculated F-value : Hence it may be concluded that 
#      (null hypothesis is accepted)        two populations have same variance

#Q3. n1 = 8, n2 = 12, v1 = 7, v2= 11, var1 = var2, P((S1sq/ S2sq) < 4.89) = ?
pf(4.89, 7, 11)

#Q4.
P <- c(2, 4, 6, 8, 10)
Q <- rep(c(2, 4, 6, 8, 10), 2)
F_value <- var(P)/var(Q)
F_critical <- qf(1-0.05, 4, 9)

#As Critical F-value > Calculated F-value : Hence it may be concluded that 
#      (null hypothesis is accepted)        two populations have nearly same variances

#--------------------------------------------------------------------------------#

#HOMEWORK QUESTIONS

#HWQ1. Population : u = 100, s.d.= 10, Sample : n = 30, x' = 100,S=10/sqrt(30)
#      P(95 < X < 105) = P(X < 105) - P(X < 95)
pnorm(105, mean = 100, sd = 10/sqrt(30)) - pnorm(95, 100, 10/sqrt(30))

#HWQ2. u = 50, s.d. = 15, Sample of size 1, P(50 < X < 70) = P(X < 70) - P(X < 50)
pnorm(70, 50, 15) - pnorm(50, 50, 15)
#--------------------------------------------------------------------------------#
