## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
        x <<- y
        inv <<- NULL
}
get <- function()
        x
        setinverse <- function(inverse) 
        inv <<- inverse
        getinverse <- function()
        inv
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        ##The last statement that is a list will be returned by makeCacheMatrix function

}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)){
        message("getting cached matrix inverse")
        return(inv)
        }
        
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
        #in R the last statement is returned so 
        #this will return the inverse of the matrix
}
