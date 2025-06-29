nums <- c(2.3, 4.4, 5, 5, 6, 6.5, 6.5, 6.5, 6.5,
             8.6, 9.2, 4.4, 4.4, 5.4, 5, 2, 4.4)
mean(nums)
median(nums)
getmode <- function(X) {
  uniqx <- unique(X)
  uniqx[which.max(tabulate(match(X, uniqx)))]
}
getmode(nums)
min(nums)
max(nums)
range(nums)