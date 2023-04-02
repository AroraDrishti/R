# TASK-1
list1 <- list("a","b","c","d")
list1

# Accessing the elements of the list
list1[1]

# Update the value of an element
list1[1] <- "s"
list1

# Length of the list
length(list1)

# Search in a list
"b"%in%list1

# Append in the list
list1 <- append(list1,"e")

# Append in the list after a specific position
append(list1,"f",5)

# TASK 2
# Dropping elements from the list
newlist1 <- list1[-2]
newlist1
list1

list2 <- list("hello",c(1,2,3,4),TRUE)
list2

names(list2) <- c("L1","L2","L3")

print(list2)
print(list2$L1)

# TASK 3
list3 <- list("str1","str2",c(1,2,3,4,5))
names(list3) <- c("S1","S2","V")

# Printing the elements by names assigned
print(list3$S1)
print(list3$S2)
print(list3$V)

# Delete last element
list3[3] <- NULL
list3

# TASK 4
list11 <- list(1,2,3,4,5)
list22 <- list("a","b","c","d","e","f","g")
mergedlist <- c(list11, list22)
mergedlist

# TASK 5
# Accessing a arange of elements from the list
carlist <- list("a","b","c","d","e","f","g","h","i","j")
carlist[4:6]
carlist[-4:-6]
