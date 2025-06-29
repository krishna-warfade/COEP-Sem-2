#Q1
head_prob <- function() {
  Heads <- 0:3
  Prob <- dbinom(Heads, 3, 0.5)
  data.frame(Heads, Prob)
}
coins_df <- head_prob()

#(a) P(0<=x<=2)
p1 <- sum(coins_df$Prob[coins_df$Heads <= 2])
#(b) P(x>2)
p2 <- sum(coins_df$Prob[coins_df$Heads > 2])

print(coins_df)
print(paste("P(0 <= x <= 2):", p1))
print(paste("P(x > 2):", p2))

#Q2
heads_tails <- function() {
  Heads_Tails <- seq(-3, 3, 2)
  Prob <- dbinom(abs(Heads_Tails), 3, 0.5)
  data.frame(Heads_Tails, Prob)
}
df <- heads_tails()

#(a) P(0<=x<=3)
p3 <- sum(df$Prob[df$Heads_Tails >= 0])

#(b) P(x>3)
p4 <- sum(df$Prob[df$Heads_Tails > 3])

print(df)
print(paste("P(0 <= x <= 3):", p3))
print(paste("P(x > 3):", p4))

#Q3
#Function to calculate the difference between two dice faces
difference <- function() {
  dice <- expand.grid(die1 = 1:6, die2 = 1:6)
  dice$diff <- abs(dice$die1 - dice$die2)
  
  diff_table <- table(dice$diff) / 36
  data.frame(Difference = as.numeric(names(diff_table)),
             Prob = as.numeric(diff_table))
}

# Generate the data frame
diff_df <- difference()
View(diff_df)
# View(expand.grid(die1 = 1:6, die2 = 1:6))
# (a) P(x < 1)
p5 <- sum(diff_df$Prob[diff_df$Difference < 1])

# (b) P(x >= 2)
p6 <- sum(diff_df$Prob[diff_df$Difference >= 2])

# Output
print(diff_df)
print(paste("P(x < 1):", p5))
print(paste("P(x >= 2):", p6))

#Q4
# Function to calculate the product of two dice faces
product <- function() {
  # Generate all possible outcomes of rolling two dice
  dice <- expand.grid(die1 = 1:6, die2 = 1:6)
  # Calculate the product of the two dice
  dice$prod <- dice$die1 * dice$die2
  # Count frequency & create table of products and convert to probabilities
  prod_table <- table(dice$prod) / 36
  
  # Create a data frame with products and their probabilities
  data.frame(
    Prod = as.numeric(names(prod_table)), # Extract and convert products
    Probability = as.numeric(prod_table)  # Extract probabilities
  )
}
# Generate data frame
product_df <- product()
# (a) P(4 <= x < 20)
p7 <- sum(product_df$Probability[product_df$Prod >= 4
                                                 & product_df$Prod < 20])

# (b) P(x >= 20)
p8 <- sum(product_df$Probability[product_df$Prod >= 20])
# (c) P(x = 8)
p9 <- product_df$Probability[product_df$Prod == 8]

print(product_df)
print(paste("P(4 <= x < 20):", p7))
print(paste("P(x >= 20):", p8))
print(paste("P(x = 8):", p9))