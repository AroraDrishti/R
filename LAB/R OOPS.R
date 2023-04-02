installed.packages("sloop")

library(R6)

Human <- R6Class(
  classname = "Human",
  public = list
  (
    name=NULL,
    age=NULL,
    id=NULL,
    initialize=function(name=NA, age=NA, id=NA) 
    {
      self$name <- name
      self$age <- age
      self$id <- id
    }
  )
)

H1 <- Human$new(name="Drishti", age=20, id=101)
print(H1)
H1$name

Human1 <- R6Class(
  classname = "Human1",
  public = list
  (
    initialize=function(name=NA, age=NA, id=NA) 
    {
      private$name <- name
      private$age <- age
      private$id <- id
    }
  ),
  private = list
  (
    name=NULL,
    age=NULL,
    id=NULL
  )
)

H11 <- Human1$new(name="Drishti", age=20, id=101)
print(H11)
print(H11$name)

# Inheritance in R
Animal <- R6Class(
  classname = "Animal",
  public = list
  (
    initialize = function(name = NA, age = NA, number_of_legs = NA) 
    {
      private$name = name
      private$age = age
      private$number_of_legs = number_of_legs
    },
    make_sound = function(sound) 
    {
      cat(private$name, " says ", sound, "\n", sep = "")
    }
  ),
  private = list
  (
    name = NULL,
    age = NULL,
    number_of_legs = NULL
  )
)

Dog <- R6Class(
  classname = "Dog",
  inherit = Animal,
  public = list
  (
    initialize = function(name = NA, age = NA, number_of_legs = NA, hair_color = NA) 
      {
      super$initialize(name, age, number_of_legs)
      private$hair_color = hair_color
    }
  ),
  private = list
  (
    hair_color = NULL
  )
)

D1 <- Dog$new("Tommy", 1, 4, "Brown")
print(D1)
D1$make_sound("WOOF")
