source("cachematrix.R")

m <- rbind(c(1,2), c(1, 3))
cachedMatrix <- makeCacheMatrix(m)
print(cacheSolve(cachedMatrix)) # do not use cache
print(cacheSolve(cachedMatrix)) # use cached

m[1, 1] <- 2
cachedMatrix$set(m)
print(cacheSolve(cachedMatrix)) # do not use cache
print(cacheSolve(cachedMatrix)) # use cache

