data()
View(CO2)
table(CO2$Treatment) #Absolute frequency
pie(table(CO2$Treatment)) #Pie chart

barplot(CO2$conc, main = "Bar Plot of Conc. (Discrete)") #Bar plot
hist(CO2$uptake) #Histogram
mean(CO2$uptake) #To calculate mean
median(CO2$uptake) #To calculate median
getmode <- function(V) {
  uniqv <- unique(V)
  uniqv[which.max(tabulate(match(V, uniqv)))]
}
getmode(CO2$uptake)

plot(CO2$uptake, xlab = "X-axis", ylab = "Y-axis")
hist(CO2 $ uptake, xlab = "X-axis", ylab = "Y-axis", main = "Histogram")
barplot(CO2 $ uptake, xlab = "Uptake", ylab = "Frequency", main = "Barplot")
max(CO2$uptake)
min(CO2$uptake)
range(CO2$uptake)
summary(CO2$uptake)
quantile(CO2$uptake)

data <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
quartiles <- quantile(data, probs = c(0.25, 0.5, 0.75))
print(quartiles)

quantiles <- quantile(data, probs = c(0.1, 0.5, 0.9))
print(quantiles)
