## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	# initial inverse value
	inv <- NULL
	
	# set function for set new value of matrix
	set <- function (y) {
		# set new value
		x <<- y
		# reset inverse value
		inv <<- NULL
	}
	
	# get function for set value of matix
	get <- function () {
		x
	}
	
	# setinv function for set value of inverse of matrix
	setinv <- function (i) {
		inv <<- i
	}
	
	# getinv function for get value of inverse
	getinv <- function () {
		inv
	}
	
	# return list of all function for invoke outside scope
	list(
		set=set,
		get=get,
		setinv=setinv,
		getinv=getinv
	)
}


## Write a short comment describing this function

# cacheSolve use for get inverse value of matrix by using cache variable
cacheSolve <- function(x, ...) {
	# try to get inverse value
	inv <- x$getinv()
	
	# checking inverse is exist
	if(!is.null(inv)) {
		# if exist, return it
		message("getting caches data")
		return (inv)
	}
	
	# if not exist, calculate and save it before return
	data <- x$get()
	inv <- solve(data, ...)
	x$setinv(inv)
	m
}
