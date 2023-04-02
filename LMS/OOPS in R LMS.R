# LMS Questions
# Create a class student 

student <- R6Class(
  classname = "student",
  public = list
  (
    initialize = function(name = NA, age = NA, hair_color = NA) 
    {
      private$name <- name
      private$age <- age
      private$hair_color <- hair_color
    }
  ),
  private = list
  (
    name = NULL,
    age = NULL,
    hair_color = NULL
  )
)

# Create the same object from the class as before
S1 <-student$new(name = "A", age = 13, hair_color = "XYZ")
print(S1)

# Instantiating a class with private elements
# We see everything available inside and outside the class.
# We also see the values assigned to each property.
# But can we access them?
# Well, no, that’s the point of a private access modifier:
  
# Attempting to access private class members outside the class
print(S1$age)

# Attempting to access private class members outside the class using member functions
student <- R6Class(
  classname = "student",
  public = list
  (
    initialize = function(name = NA, age = NA, hair_color = NA) 
    {
      private$name = name
      private$age = age
      private$hair_color = hair_color
      self$sayhello()
    },
    
    sayhello = function() 
    {
      cat(private$name, " Hello!", sep = "")
    },
    
    show = function() 
    {
      cat("STUDENT: \n")
      cat("\tName: ", private$name, "\n", sep = "")
      cat("\tAge: ", private$age, " or ", private$student_age(), " in age years\n", sep = "")
      cat("\tHair color: ", private$hair_color, "\n", sep = "")
    }
  ),
  
  private = list
  (
    name = NULL,
    age = NULL,
    hair_color = NULL,
    
    student_age = function() 
    {
      return(private$age * 7)
    }
  )
)

# Method was called from the constructor
S1 <- student$new(name = "ASDF", age = 14, hair_color = "xyx")

# Try executing public method on console
# Try to execute a private method on console