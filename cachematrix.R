## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inve <- NULL
  set <- function(y) {
    x <<- y
    inve <<- NULL
    }
  get <- function() x
  setinv <- function(inverse) inve <<- inverse
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inve <- x$getinv()
  if(!is.null(inve)) {
    message("getting cached result")
    return(inve)
    }
  data <- x$get()
  inve <- solve(data, ...)
  x$setinv(inve)
  inve
}
