# Week 1 - Quiz 1
hw1 <- read.csv("hw1_data.csv", sep = ",")

# If I execute the expression x <- 4 in R, 
# what is the class of the object `x' as determined by the `class()' function?
x <- 4
class(x)

# What is the class of the object defined by the expression x <- c(4, "a", TRUE)?
x <- c(4, "a", TRUE)
class(x)

# If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), 
# what is produced by the expression rbind(x, y)?
x <- c(1,3, 5)
y <- c(3, 2, 10)
rbind(x, y)

# Suppose I have a list defined as x <- list(2, "a", "b", TRUE). 
#What does x[[1]] give me?
x <- list(2, "a", "b", TRUE)
x[[1]]

# Suppose I have a vector x <- 1:4 and y <- 2:3. 
# What is produced by the expression x + y?
x <- 1:4
y <- 2:3
x + y
class(x + y)

# Suppose I have a vector x <- c(3, 5, 1, 10, 12, 6) 
# and I want to set all elements of this vector that are less than 6 to be equal to zero. 
# What R code achieves this?
x <- c(3, 5, 1, 10, 12, 6)

x[x > 0] <- 6
x
x[x == 6] <- 0
x
x[x %in% 1:5] <- 0
x
x[x > 6] <- 0
x

# In the dataset provided for this Quiz, what are the column names of the dataset?
names(hw1)

# Extract the first 2 rows of the data frame and print them to the console. 
# What does the output look like?
hw1[1:2,]

# How many observations (i.e. rows) are in this data frame?
nrow(hw1)

# Extract the last 2 rows of the data frame and print them to the console. 
# What does the output look like?
tail(hw1)

# What is the value of Ozone in the 47th row?
hw1$Ozone[47]

# How many missing values are in the Ozone column of this data frame?
sum(is.na(hw1$Ozone))

# What is the mean of the Ozone column in this dataset? 
# Exclude missing values (coded as NA) from this calculation.
mean(hw1$Ozone, na.rm = T)

# Extract the subset of rows of the data frame where Ozone values are above 31 and 
# Temp values are above 90. What is the mean of Solar.R in this subset?
hw1.q18 <- subset(hw1, Ozone > 31 & Temp > 90 & !is.na(Solar.R))
mean(hw1.q18$Solar.R)

# What is the mean of "Temp" when "Month" is equal to 6?
hw1.q19 <- subset(hw1, Month == 6)
mean(hw1.q19$Temp)

# What was the maximum ozone value in the month of May (i.e. Month = 5)?
hw1.q20 <- subset(hw1, Month == 5)
max(hw1.q20$Ozone, na.rm = T)
