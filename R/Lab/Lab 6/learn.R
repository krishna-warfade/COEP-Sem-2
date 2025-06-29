#Q). The probability that a patient recovers from a rare disease is 0.4.
# If 100 people are known to have contracted this disease,
# What is probability that fewer than 30 survive?
p1 <- pnorm(29.5, 100*0.4, sqrt(100*0.4*0.6))
print(p1)

#To plot the binomial distribution graph.
n=50
p=0.6
k=0:n
pmf=dbinom(k,n,p)
plot(k,pmf,type="h") #(histogram like)

#To plot a poisson distribution graph.
m=4
x=0:25
px=dpois(x,m)
plot(x,px,"h",main="Poisson probability curve",xlab="X",ylab="probability")

#Find the value of Z (k here) if the area under a std normal curve : to the right of z is 0.3622
#P(X >= k) = 0.3622

qnorm(0.6378, 0, 1)
