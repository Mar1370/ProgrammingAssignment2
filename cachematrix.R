## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
  #Create a empty matrix to store the results
  s <- NULL
  #Create 'set' and 'get' functions
  ## set ->' x' (matrix) takes the value of 'y' and 's' is Null
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  ## get -> is the x matrix
  get <- function() x
  #Calculate the functions 
  ## setsolve ??? calculate the inverse matrix and this value is assigned to 's'
  setsolve <- function(solve) s<<- solve
  ##getsolve ??? the 's' value
  getsolve <- function() s
  ## list the values
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    # calculate the Inverse matrix 
    s <- x$getsolve()
    # if the 's' value is different to Null, then, it returns the 's' value
    if(!is.null(s)) {
      message("getting inverse matrix")
      return(s)
    }
    # if the 's' value is null, then calculate the inverse with the function 'solve'
    data <- x$get()
    s <- solve(data, ...)
    x$setsolve(s)
    # show the 's' value
    s
}


