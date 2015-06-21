#rm(list = ls ())


## Put comments here that give an overall description of what your functions do
#Comments
#The function 'makeCacheMatrix' creates a "matrix", 
#which is basically a procedure that contains a function on following steps
#set the value of the matrix = $set function (x)
#get the value of the matrix  =$get function (x) return(mtx)
#set the inverse of the matrix =$setinv function(inv) inverse <<- inv
#get the inverse of the matrix  =$getinv function()  return(inverse)
#print(x)  #x$get()

#create test
#m <- matrix(c(1, 1, 4, 0, 3, 1, 4, 4, 0), 3,3)
#print(m)
#find determined of m
#det(m)
#function for the inverse
#solve(m)

#create makeCacheMatrix
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y)
        {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## computes the inverse 
## "matrix" returned by `makeCacheMatrix` above. 
## returns a matrix that is inverse

#create cacheSolve
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}


#test the matrix
#test <- matrix(c(1, 1, 4, 0, 3, 1, 4, 4, 0), 3,3)
#testCached <- makeCacheMatrix(test)
#testInv <- cacheSolve(testCached)
#end comment 











