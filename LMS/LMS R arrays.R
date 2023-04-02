# ARRAYS ASSIGNMENT

# Q1
v1 <- c(2:10)
v2 <- c(1:9)
r.names <- c("R1","R2","R3")
c.names <- c("C1","C2","C3")
m.names <- c("Matrix1","Matrix2")
result <- array(c(v1,v2), dim = c(3,3,2), dimnames = list(r.names,c.names,
                                                        m.names))
result

# Q2
ta <- c(1:20)
ma <- array(ta, dim = c(4, 3, 2))
ma

# Accessing the elements
# Q3
ma[2, 3, 2]

# Q4
ma[c(1),,1]

# Q5
ma[,c(1),1]

# Q6
5 %in% ma
