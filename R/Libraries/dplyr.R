install.packages("dplyr")
library(dplyr)

# select() - Select Columns
data <- tibble(Name = c("Alice", "Bob"), Age = c(25, 30), Salary = c(50000, 60000))

selected_data <- select(data, Name, Salary)
# Output: Name and Salary columns only
data
selected_data

Table <- data.frame(Name = c("Ravi", "Raju", "Arnav", "Prasad",
                                      "Robert", "Ishan", "Patrick", "Rohan"),
                    Department = c("Maths", "Physics", "Chemistry", "Water",
                                   "Food", "Coding", "Cleanliness", "Security"),
                    Salary = c(1000,2000, 3000, 4000, 5000, 6000, 7000, 8000),
                    DA = c(23, 43, 65, 58, 96, 30, 75, 44),
                    TA = c(2, 1, 4, 5, 6, 3, 2, 7))
Table
select_new <- select(Table, Name, Salary)
select_names <- select(Table, starts_with("N"))
select_new
select_names

# filter() - Filter Rows
filter(Table, Salary >= 5000)

# mutate() - Create New Columns
mutate(Table, Bonus = Salary * 0.1)  
# Adds a "Bonus" column (10% of Salary)
# transmute() keeps only the new column

# arrange() - Sort Data
arrange(Table, Salary)        # Ascending order by Salary
arrange(Table, desc(Salary))  # Descending order

# summarise(data, Avg_Salary = mean(Salary))  
# Output: Average salary
summarise(Table, Avg_Salary = mean(Salary)) 

Table %>% 
  group_by(Department) %>% 
  summarise(Avg_Salary = mean(Salary))

# group_by() - Group Data
grouped_data <- group_by(Table, Department)
summarise(grouped_data, Avg_Salary = mean(Salary))
