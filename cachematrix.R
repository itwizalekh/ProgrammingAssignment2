## The function makeCacheMatrix creates a list of functions to set and get a 
## Matrix or its inverse.
## The function cacheSolve actually checks if the inverse of the matrix 
## exists, and calculates it does not exist.

## This function returns four methods: set, get, setinv, getinv

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
			x <<- y
			inv <<- NULL
		}
	get <- function() x
	setinv <- function(inverseMatrix) inv <<- inverseMatrix
	getinv <- function() inv
	list(set = set, get = get,
			setinv = setinv,
			getinv = getinv)
}


## This function checks if inverse of the matrix exists. Computes otherwise.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- x$getinv()
		if(!is.null(inv)) {
			message("getting cached data")
			return(inv)
		}
		data <- x$get()
		inverseMatrix <- solve(data, ...)
		x$setinv(inverseMatrix)
		inverseMat
}
