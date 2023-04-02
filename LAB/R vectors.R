# Task 1: Declaration of single value
a <- 1.7

# Alternate ways
# 1.7 -> a
# a = 1.7
# assign("a", 1.7)

print(a)

# Task 2: Declaration of several values
a <- c(5, 10, 15, 20, 25, 30)

print(a)

# Task 3:
b <- a * a
cat("Squared values are ", b)

# Task 4:
b <- 1 / a
cat("Reciprocated values are " , b)

# Task 5:
b <- a - 1
cat("Subtracted values are " , b)

# SEQUENCES
# Task 6:
seq1 <- 2:10
seq2 <- seq(from = 0, to = 20, by = 5)
seq3 <- seq(0, 100, 20)

print("Sequences")
cat("2:10 = ", seq1, "\n")
cat("seq(from = 0, to = 20, by = 5) = ", seq2, "\n")
cat("seq(0, 100, 20) = ", seq3, "\n")


# Task 7: Trying incompatible dimensions
a1 <- c(1, 2, 5)
a2 <- c(1, 2, 3, 4)

cat("c(1, 2, 5) + c(1, 2, 3, 4) = ", (a1 + a2))

a1 <- c(1, 2, 3, 4, 5)
a2 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

cat("c(1, 2, 3, 4, 5) + c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) = ", (a1 + a2))


# Task 8: Removing variables
ls()
rm(a1)
ls()


# Task 9: Vector of Strings
strings <- c("hello", "world")
print(strings)


# Task 10: Creating Logical Value Sequences
logicals <- c(T,F,F,T)
print(logicals)


# Task 11: Sorting Vectors
strings <- c(
  "t",
  "q",
  "b",
  "f",
  "j",
  "o",
  "t",
  "s",
  "ly",
  "d"
)
sort(strings)

nums <- c(7, 3, 5, 7, 8, 2, 1, 25, 15, 72, 32)
sort(nums)


# Task 12: Accessing Vectors
a <- c("The", "girl", "has", "a,", "brown", "dog", "and", "white", "cat")
# Access by position via value
print(a[1])
# Access by position via sequence
print(a[c(1, 3)])
# Access using negative index
print(a[c(-2, -3)])
print(a[c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)])

# Task 13: Changing Vector Items:
a[1] <- "123"
print(a)
