## These functions could to creat a object that store the inverse of a matrix and caches

## This function could give a list: set and get the value of the matrix, set and get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
                }
        get<-function()x
                setsolve<-function(solve)m<<-solve
                        getsolve=function()m
                                list(set=set,get=get,getsolve=getsolve,setsolve=setsolve)

}


##  This function calculates the inverse of the matrix created with the above function, but it first checks to see whether
##   the invers has already calculate. If calculated, it gets the inverse from the cache and skips the compution.
##  If not calculated,it calculates the inverse of the data and sets the value of the invers in the cache via the setsolve
##  function.

cacheSolve <- function(x, ...) {
        m<-x$getsolve()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
                }
        data<-x$get()
        m<-solve(data,...)
        x$setsolve(m)
        m
}
