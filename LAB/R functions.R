# FUNCTIONS
# Empty function
f <- function()
{}
class(f)

# Function to print a name
f1 <- function()
{
  print("name")
}

# Function call
f1()

# Syntax
# f2 -> return (value)
# {
#     block of code
#     pass data and parameters
# }

# Function to print hello
f3 <- function() 
{
  print("hello")
}
f3()

# Advantages of funtions:
# 1. Reusablity
# 2. Shortening of code


# Try creating , calling Add function
# add function 
# {
#    Simple arithmetic statement
#    2+3
# }

add <- function() 
{
  cat("2 + 3 is ", 2+3)
}
add()

# Arguments
# Arg1, Arg2, ..... Argn

# function(Information) 
# {
#    ___
#    ___
#    ___
# }
# call function with arguments

# Function with 2 arguments
fun2arg <- function(arg1, arg2) 
{
  cat(arg1, " + ", arg2, " = ", arg1+arg2);
}
fun2arg(45, 55)

# Function with 3 arguments
fun3arg <- function(arg1, arg2, arg3) 
{
  cat("Values are: ", arg1, arg2, arg3)
}
fun3arg(3, 56, "Hi")
fun3arg(3, "Hi")


# Default Parameters
fundefaultpar <- function(arg1 = "December") 
{
  cat("Month is ", arg1)
}
fundefaultpar("March")
fundefaultpar("January", "July")
fundefaultpar()


# Return values
funret <- function(arg1) 
{
  return (2*arg1)
}
funret(4)
funret(45)
funret(funret(funret(43)))

# Global Variables 
# Create a variable outside the function and inside the function with same name

X <- "This is global"
fn <- function() 
{
  X <- "This is local"
  cat("Variable value: ", X, "\n")
  return(X)
}
fn()
cat("Variable value: ", X, "\n")

# Global Assignment Operator
X <- "This is global"
count <- 0
fn2 <- function(count=0) 
{
  X <<- "This is local"
  cat("Variable value: ", X, "\n", count, "\n")
  count <- count + 1
  if (count>5) 
  {
    return (X)
  }
  fn2(count)
}
fn2()
X

# UNSOLVED QUESTIONS
# Q1.
addSix <- function(x = 5) 
{
  return (x+6)
}
cat("Calling addSix(504): ", addSix(504), "\n")
cat("Calling addSix(): ", addSix(), "\n")

# Q2.
addTenAndSquare <- function(n = 4) 
{
  return ((n+10)**2)
}
cat("Calling addTenAndSquare(45): ", addTenAndSquare(45), "\n")
cat("Calling addTenAndSquare(): ", addTenAndSquare(), "\n")