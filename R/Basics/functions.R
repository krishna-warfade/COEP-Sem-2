func1 <- function(fname) {
  paste(fname,"Sir")
}
func1("John")
func1("Henry")
func2 <- function(fname, lname) {paste(fname, lname)}
func2("Shreya", "Soni")
func2("Shreyas")
func3 <- function(country = "India") {paste("I am from", country)}
func3()
func3("Norway")
func4 <- function(x) {return(5 * x)}
func4(3)
func4(10)
Nes <- function(x, y) {
  a <- x + y
  return (a)
}
Nes(Nes(2, 2), Nes(3, 3))
Out <- function(x) {
  In <- function(y) {
      a <- x + y
      return(a)
  }
  return(In)
}
result <- Out(3)
result(5)
try_recursion <- function(k) {
  if(k > 0) {
    result <- k + try_recursion(k - 1)
    print(result)
  }
  else {
    result <- 0
    return(result)
  }
}
try_recursion(6)


Table1 <- data.frame(Training = c("Strength", "Stamina", "Diet"),
                     Pulse = c(100, 150, 200),
                     Duration = c(60, 45, 30))
#Columns

View(Table1)
summary(Table1)
Table1 $ Training
New1 <- rbind(Table1, c("Power", 110, 50))
View(New1)
New2 <- cbind(Table1, Steps = c(1100, 1010, 786))
View(New2)
New3 <- Table1[-c(1), -c(1)]
View(New3)
dim(Table1)
nrow(Table1)
ncol(Table1)
length(Table1)

data()
View(DNase)
DNase$Product <- DNase$conc * DNase$density
View(DNase)
