# Conditional Statements

# if statement
age=70
if (age > 18)
{
  print("You are young adult")
}

# if, else if, else statement
color='green'
if (color == 'blue')
{
  print("Blue color")
} else if (color == 'red')
{
  print("Red color")
} else
{
  print("Some color except red and blue")
}

# For loop
for (i in c(1:5))
{
  print(i)
}

cars = c("Audi","Honda","BMW","Maserati","Thar")
for (listnames in cars)
{
  print(listnames)
}

# Loop Control Statements
# break statement
i=1
while (TRUE)
{
  print(i)
  i=i+1
  if (i>5)
    break
}

# next statement (print odd numbers only)
v <- c(1:10)
for (i in v)
{
 if (i %% 2 == 0)
 {
   next
 }
  print(i)
}