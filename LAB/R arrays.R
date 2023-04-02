# Arrays

# Creating arrays
myarray <- c(1:20)
myarray
myarray1 <- array(myarray, dim = c(4,5))
myarray1
myarray2 <- array(myarray, dim = c(2,5,2))
myarray2

# Renaming the rows and columns
rnames <- c("R1","R2","R3","R4")
cnames <- c("C1","C2","C3","C4","C5")
dimnames <- c("X", "Y")
myarray2 <- array(myarray2, dim = c(4,5,2), dimnames = list(rnames, cnames, dimnames))
myarray2

# Passing a vector to array as an argument
v1 <- c(1:8)
rnamess <- c("R1","R2","R3","R4")
cnamess <- c("C1","C2")
array4 <- array(v1, dim = c(4,2), dimnames = list(rnamess, cnamess))
array4

# dim command prints the rows and columns while 
# length function prints the number of elements
dim(myarray1)
length(myarray1)

# Apply function
v1 <- c(1:15)
v2 <- c(2:10)
newarr <- array(v1, dim = c(3,5))
print(newarr)
apply(newarr, 2, sum)
apply(newarr, 1, sum)

# Factor
f1 <- factor(v1)
f1
charvec <- c('a','b','a')
f2 <- factor(charvec)
f2

# Creating factor for streams
stream <- factor(c("CSE", "ECE", "CSE", "IoT", "EEE", "IoT"))
stream

# Check whether the passed object is a factor or not
d1 <- c("North", "South", "East", "West")
cat("Is factor? ", is.factor(d1), "\n")

d2 <- factor(d1)
cat("Is factor? ", is.factor(d2), "\n")

# Accessing factor elements
# Displaying first element
d2[1]
# Displaying second element
d2[2]
# Displaying all elements
d2
# Displaying third element
d2[3]
# Displaying first and second elements
d2[(c(1, 2))]
# Displaying all elements except second element
d2[-2]

# level function
levels(stream)
levels(stream) <- c(1, 2, 3, 4)
levels(stream)

#check class of your factor
class(d2)

#modify factor elements

# Question
# Create a vector as input for student name-list.
stvec <- c("Drishti","Sahil","Vriti","Rehan","Kriti","Samar","Rohan","Sumit","Shruti")
# Apply factor function. 
stfac <- factor(stvec)
# Print all elements of factor. 
stfac
# Access the second element.
stvec[2]
# Then access 8th and 9th element. Print their values. 
stvec[8:9]
# Access all elements except 6. 
stvec[-6]
# Print and access all the elements using logical vector.
stvec[c(TRUE,TRUE,FALSE,TRUE,TRUE,TRUE,FALSE,FALSE,TRUE)]
