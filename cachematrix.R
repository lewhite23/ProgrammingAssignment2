### Programming Assignment 2


# The following function will generate a matrix based on the argument input.
# It will also store the inverse value should that value (in the cache) be calculated already and not equal to NULL.

makeCacheMatrix <- function(x = matrix()){
        inverse <<- NULL
        
        set <- function(y = matrix()){
                x <<- y
                inverse <<- NULL
        }
        
        get <- function(){
                x
        }
        
        setInverse <- function(inverse2){
                inverse <<- inverse2
        }
        
        getInverse <- function(){
                inverse
        }
        
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

# debug(makeCacheMatrix)

# The next function will calculate the inverse of the matrix created by the first function.
# Further, if the inverse of the matrix has already been calculated before and was stored on the cache then it will just 
# retrieve the inverse value from the cache through the function above and skip the calculation.

cacheSolve <-  function(x = matrix()){
        inverse <- x$getInverse()
        
        if (!is.null(inverse)){
                print("Getting cached data.")
                return(inverse)
        }
        
        matrixused <- x$get()
        inverse <- solve(matrixused)
        x$setInverse(inverse)
        inverse
}

# debug(cacheSolve)

# Test
matrix1 <- makeCacheMatrix(matrix(1:4, 2, 2))
matrix1$getInverse()
cacheSolve(my_matrix)
        
