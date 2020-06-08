# FUNCTIONS quick overview

# simple cube function
cube <- function(x, n) {
  x^3
}
cube(3)

# if function will not work on x since it has length 10
# if only works on a single logical statement
x <- 1:10
if(x > 5) {
  x <- 0
}

# a bit more complex on how R "function" handles variables
f <- function(x) {
  g <- function(y) {y + z}    #g(x) returns x+4
  z <- 4                      #default value of z is 4
  x + g(x)                    #return value
}

z <-10
f(3)

# Let's break down how f works, if we input z=10, and x=3:
# bit of trick: z is not needed here since it's already in a function 
# it first specifies g(y) = y+z
# z is always specified to be 4 (so g(y)=y+4)
# input x=3 to `x+g(x)` -> f(3)=3+g(3)
# where, g(3)=3+4=7
# so f(3)=3+7=10

# more on "if":
x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}
y
