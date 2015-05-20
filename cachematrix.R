## Matrix inversion is a costly computation, and hence there are benefits to caching the inverse
## of a matrix.
## The following two functions will help in creating a special "matrix" object, and help compute
## the inverse of this "matrix" object.

## makeCacheMatrix creates a list containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of inverse of the matrix
## 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    
    set <- function(y){
        x <<- y
        m <<- NULL
    }
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
