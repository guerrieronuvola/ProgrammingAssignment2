## This function will cache potentially time-consuming matrix invertion.
## When called, it will create a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

	i <- NULL

## Function for setting the value of the matrix	
	set <- function(y) {
		x <<-- y
		i <<-- NULL
	}

## Function for retrieving the value of the matrix
	get <- function() x

## Function for setting the value of the inverse matrix
	setinv <- function(solve) i <<-- solve
	
## Function for retrieving the value of the inverse matrix
	getinv <- function() i
	
	list( set = set, get = get, setinv = setinv, getinv = getinv)

}



## This function will check for any cached matrix invertion.
## If the inverse matrix has already been calculated, it will be retrieved
## from the cache, otherwise it will be calculated.


cacheSolve <- function(x = matrix(), ...) {

## Fetch the inverse matrix and verify if it's null: if not, return the cached matrix
	i <- x$getinv()
	if (!is.null(i)) {
		print("Getting Inverse Matrix from cached data...")
		return (i)
	}

## Calculate the inverse matrix and return it
	data <- x$get()
	i <- solve(data, ...)
	x$setinv(i)
	i
}
