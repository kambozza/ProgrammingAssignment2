## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  myinverse <- NULL
  set <- function(y){
    x <<- y
    myinverse <- NULL
  }
  get <- function() x
  setinverse <- function(inv) myinverse <<- inv
  getinverse <- function() myinverse
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matrix_inverse <- x$getinverse()
  if(!is.null(matrix_inverse)){
    message("getting cached inverse")
    return(matrix_inverse)
  }
  data <- x$get()
  matrix_inverse <- solve(data)
  x$setinverse(matrix_inverse)
  matrix_inverse
}


