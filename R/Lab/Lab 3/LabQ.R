t1 <- data.frame(Height = c(5, 5.1, 5.2, 5.12, 5.5),
                No_of_Students = c(10, 15, 20, 12, 11))
View(t1)
print(t1[t1$Height > 5.2,])
#t$Height > 5.2 → Creates a logical condition (TRUE or FALSE)
#for rows where Height > 5.2.
#t1[...] → Filters rows in t1 based on the condition.
#The comma ([,]) → Keeps all columns after selecting rows.

print(t1[t1$Height > 5.1 & t1$Height <5.5,])

t2 <- data.frame(Height = c(4.8, 6.3, 6, 5.5, 5.11),
               No_of_Students = c(4, 2, 5, 8, 20))
View(t2)
#Create a new dataframe and then bind
New1 <- rbind(t1, t2)
View(New1)

New2 <- cbind(t1, t2)
View(New2)
dim(New2)

ok <- New1[1]
print(ok)
print(okay <- New1[2])

##

install.packages("dplyr")
library(dplyr)
# Create a data frame
data <- data.frame(
  friend_id = c(1, 2, 3, 4, 5),
  friend_name = c("Sachin", "Sourav", "Dravid", "Sehwag", "Dhoni"),
  location = c("Kolkata", "Delhi", "Bangalore", "Hyderabad", "Chennai")
)

data

# Remove a row with friend_id = 3
data <- subset(data, friend_id != 3) #Syntax: subset(df, expr)
data
#OR
dnew <- subset(data, select = -c(friend_id = 4))
dnew

##5J, 3C, 2NC, 4 selected
hello <- function() {
  Jazz <- 0:4
  Prob <- choose(5, Jazz) * choose(5, 4 - Jazz) / choose(10, 4)
  data.frame(Jazz, Prob)
}
hldf <- hello()
View(hldf)
sum(hldf$Prob)
