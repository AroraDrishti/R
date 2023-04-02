# Q1
# Write a R program to take input from the user (name and age) and display the values.

print("Enter name: ")
name = readline();
name

print("Enter age: ")
age = readline();
age= as.integer(age);
age
is.integer(age)

# Print the version of R installation.
R.version

# Q2  
# Write commands in R to demonstrate the use of different data types in R.


# Q3
x=c(1:5)
y=c(6:10)

# 1.) 
length(x)

# 2.) 
sum(x)

# 3.)
z = 2*x
z

# 4.) z will have 5 elements (same as x) with each value doubled

# 5.)
num_vec = c(5:107)
num_vec

# 6.)
c(1,3,5) + c(2,4,6)
c(1,3,5) + c(2,4,6,8)
c(1,3) + c(2,4,6,8)