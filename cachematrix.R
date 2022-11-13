## Put comments here that give an overall description of what your
## functions do

## cacheSolve function calculates the inverse of a matrix that is defined in thefunction 
makeCacheMatrix
## by fetching it through get() function. This inverse is then set in the function
setInverse()
## so anytime same inverse is required, cacheSolve gets the results through the 
getInverse() function in the cache of the program
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

{ ## define the argument with default mode of "matrix"
inv <- NULL ## initialize inv as NULL; will hold value of matrix inverse
set <- function(y) { ## define the set function to assign new
x <<- y ## value of matrix in parent environment
inv <<- NULL ## if there is a new matrix, reset inv to NULL
}
get <- function() x ## define the get fucntion - returns value of the matrix argument

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
