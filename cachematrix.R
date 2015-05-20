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
    i <- NULL
    
    set <- function(y){
        x <<- y  ## <<- is used to assign value to an object in an environment 
                 ## different from its current environment
        i <<- NULL
    }
    
    get <- function() x
    
    setinverse <- function(inverse) i <<- inverse
    
    getinverse <- function() i
    
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## cacheSolve function calculates the inverse of the special "matrix" created with above function
## It first checks to see if the inverse has already been calculated. 
## If so, it gets the inverse from the cache and skips the computation. 
## Otherwise, it calculates the inverse of the matrix and sets the value of the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {

    i <- x$getinverse()
    
    ## if inverse has been calculated already, then get it from cache and skip computation
    if(!is.null(i)) {
      message("getting cached data")
      return(i)
    }
    
    ## if inverse is not calculated, then proceed to calculate it
    data <- x$get()
    
    i <- solve(data, ...)
    
    x$setinverse(i)
    
    i
}
