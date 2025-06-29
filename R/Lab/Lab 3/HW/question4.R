Data <- data.frame(Height = c(140, 137, 150, 147, 139, 140, 150, 132, 138, 140),
                   Weight = c(55, 57, 59, 62, 61, 60, 60, 58, 59, 57))

#(1)
h1 <- c(Data[Data$Height < 130,])
print(h1)
#(2)
H_even <- c(Data[Data$Height %% 2 != 0,])
print(H_even)
#(3)
weight <- c(Data[Data$Weight > 55 & Data$Weight < 65,])
print(weight)
#(4)
prime <- function(n) {
  if (n %% 1 != 0 || n <= 1) {return(FALSE)}
  if (n == 2) {return(TRUE)}
  if (n %% 2 == 0) {return(FALSE)}
  for (i in seq(3, n / 2, 2)) {
    if (n %% i == 0) {return(FALSE)}
  }
  return(TRUE)
}
prime(8)
prime(7)
#(5)
fact <- function(n) {
  if (n == 0) {return(1)}
  result <- n
  for (i in (n - 1):1) {
    result <- result * i
  }
  return(result)
}
fact(4)
fact(5)
