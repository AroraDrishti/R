# MATRIX

# To create matrices
mymatrix <- matrix(c(1,2,3,4,5,6), nrow=2, ncol=3)
mymatrix1 <- matrix(c(2:11), nrow=2, ncol=5)

# Using byrow parameter
mymatrix2 <- matrix(c(1,5,6,3,4,8), byrow=FALSE)
mymatrix2

# Naming the rows and columns in matrix
rname = c("R1","R2")
cname = c("C1","C2","C3")
dimnames=list(rname,cname)
dimnames

mymatrix3 <- matrix(c(1,2,5,6,7,8),nrow=2, ncol=3,dimname=dimnames)
mymatrix3

# Accessing the elements of the matrix
mymatrix3[1,2]
mymatrix3[1,3]
mymatrix3[1,2]
mymatrix3[2,]
mymatrix3[,3]

# Concatenating rows and columns to a matrix
newmatrix <- cbind(mymatrix3, c(2,3))
newmatrix

rnewmatrix <- rbind(mymatrix3, c(2,3,4))
rnewmatrix

# To remove elements from the matrix
mymatrix3[c(-2),c(-3)]
