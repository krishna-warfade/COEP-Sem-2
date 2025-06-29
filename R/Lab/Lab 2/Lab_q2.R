#Q1.
Table <- data.frame(Employee_Name = c("Ravi", "Raju", "Arnav", "Prasad",
                                      "Robert", "Ishan", "Patrick", "Rohan"),
                    Department = c("Maths", "Physics", "Chemistry", "Water",
                                   "Food", "Coding", "Cleanliness", "Security"),
                    Salary = c(1000,2000, 3000, 4000, 5000, 6000, 7000, 8000),
                    DA = c(23, 43, 65, 58, 96, 30, 75, 44),
                    TA = c(2, 1, 4, 5, 6, 3, 2, 7))
View(Table)
dim(Table)

#Q2.
New <- rbind(Table, c("Atharva", "Computer", 8700, 56, 9),
             c("Aryan", "OS", 6800, 46, 8))
View(New)
dim(New)

#Q3
Tab <- data.frame(Prize = c(10, 15, 30, 40, 50, 60),
                      Quantity = c(4, 20, 15, 10, 16, 8))
View(Tab)

#Q4
Records <- data.frame(Employee = c("Ravi", "Raju", "Arnav", "Prasad",
                                      "Robert", "Ishan", "Patrick", "Rohan"),
                    Department = c("Maths", "Physics", "Chemistry", "Water",
                                   "Food", "Coding", "Cleanliness", "Security"),
                    DA = c(1000,2000, 3000, 4000, 5000, 6000, 7000, 8000))
print(Records[Records$DA > 5000,])
