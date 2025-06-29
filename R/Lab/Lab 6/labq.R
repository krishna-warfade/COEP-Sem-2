#QUESTIONS ON NORMAL
#Q1. n = 500, mean = 151, sd = 15 : P(120 < X < 155)
p1 <- pnorm(155, mean = 151, sd = 15) - pnorm(120, mean = 151, sd = 15)
print(p1)

#Q2. Std Normal Dist : mean = 0, sd = 1
#(a) P(Z > 1.84)
p2 <- 1 - pnorm(1.84, mean = 0, sd = 1)
print(p2)

#(b) P(-1.97 < Z < 0.86)
p3 <- pnorm(0.86, mean = 0, sd = 1) - pnorm(-1.97, mean = 0, sd = 1)
print(p3)

#Q3. mean = 24, sd = 3.8
#(a) P(X >= 30)
p4 <- 1 - pnorm(30, mean = 24, sd = 3.8)
print(p4)

#(b) P(X >= 15 )percentage of time is he late
p5 <- (1 - pnorm(15, mean = 24, sd = 3.8)) * 100
print(p5)

#(c) P(X > 25)
p6 <- 1 - pnorm(25, mean = 24, sd = 3.8)
print(p6)

#(d)
trips <-  1 - pnorm(30, mean = 24, sd = 3.8)
p7 <- dbinom(2, 3, trips)
print(p7)

#QUESTIONS ON EXPONENTIAL
#Q1. mean = 15, P(X > 15)
p8 <- 1 - pexp(15, rate = 1/15)
print(p8)

#Q2. rate parameter = 2, P(X > 0.5)
p9 <- 1 - pexp(0.5, rate = 2)
print(p9)

#Q3. mean = 4, P(X < 3) for 4 of 6 days
serve <- pexp(3, rate = 1/4)
p10 <- sum(dbinom(4:6, 6, serve))
print(p10)
