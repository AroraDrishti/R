# Q1
vec.a <- c(1,2,3,4)
vec.a*2

# Q2
for (i in vec.a)
{
  vec[i] <- vec.a[i]*2
}
vec.a

# Q3
while(TRUE)
{
  x <- rnorm(1)
  print(x)
  if (x>1)
  {
    break
  }
}

# Q4
for(y in 1:10)
{
  print(paste(3,'*',y,'=',3*y))
}

# Q5
for (row in 1:3)
{
  for (col in 1:4)
  {
    print(paste(row, col))
  }
}

# Q6
for (row in 3:1)
{
  for (col in 4:1)
  {
    print(paste(row, col))
  }
}

# Q7
vec1 <- seq(1:20)
for (i in vec1)
{
  if (i %% 2 != 0)
  {
    next
  }
  else
  {
    print(i)
  }
}

# Q8 
print('Enter your name: ')
name=readline()
for (i in c(1:10))
{
  print(name)
}

# Q9
for (i in c(45:35))
{
  print(i)
}