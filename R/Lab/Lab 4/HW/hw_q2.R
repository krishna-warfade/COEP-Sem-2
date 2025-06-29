#Q1
f <- function(x) {
  (x/8) * (x >= 0 & x < 2) +
    (1/4) * (x >=2 & x < 4) +
    (-x/8 + 3/4) * (x >=4 & x < 6) +
    (0) * (x >= 6)
}
curve(f, -1, 7)

#Q2
g <- function(x) {
  ((2/75) * x) * (x >=0 & x <= 5) +
    (2/15) * (x > 5 & x <= 10) +
    (0) * (x > 10)
}
#(a) Graph for all x
curve(g)

#(b) P(X>4)
integrate(g, 4, Inf)
