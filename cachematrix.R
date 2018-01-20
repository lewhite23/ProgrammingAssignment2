### Programming Assignment 2

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
        
