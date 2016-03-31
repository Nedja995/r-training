
#generate list with random values
vec <- runif(30, min = 0, max = 10)
mat <- matrix(vec, nrow = 5)

#split layout
par(mfrow = c(1, 2))

barplot(mat, col = heat.colors(5))
barplot(mat, col = heat.colors(5))

