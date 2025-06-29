#Factorial : factorial()
#Combination : choose(n,r)
#Permutation : choose(n,r)*factorial(r)

#Q1
choose(6, 4) * choose(5, 2)
#Q2
factorial(5)
#Q3
choose(10, 5)
#Q4
choose(4, 2)
#Q5
choose(6,2)*choose(3,1)*factorial(3)

#--------------------------------RV-----------------------
#Function to calculate prob for no of heads
head_prob <- function() {
  Heads <- 0:3
  Prob <- dbinom(Heads, 3, 0.5) #dinom to find exact prob.
  data.frame(Heads, Prob)
}
coins_df <- head_prob() #Create dataframe
View(coins_df)
sum(coins_df$Prob)

#Curve given at certain points
p <- function(x) {(x) * (x > 0 & x < 1) + (2 - x) * (x >= 1 & x < 2) + (0) * (x >= 2)}
curve(p, 0, 2)

fx <- function(x) { (1/20)* (x >=0 & x <= 20) + (0) * (x >= 20)}
curve(fx, -1, 21)

## 2 coins tossed once

diff <- function() {
  H <- expand.grid(coin1 = 0:1, coin2 = 0:1)
  H$diff <- abs(H$coin1 - H$coin2)
  H_prob <- table(H$diff) / 4
  data.frame(Difference = as.numeric(names(H_prob)), Prob = as.numeric(H_prob))
}
ok_df <- diff()
print(ok_df)
View(ok_df)


##Power function
oknew <- function(x, y) {
  if(y == 0) return(1)
  result <- 1
  while (y > 0) {
    result <- result * x
    y <- y - 1
  }
  return(result)
}
oknew(2,2)
oknew(5,4)
oknew(2,5)
