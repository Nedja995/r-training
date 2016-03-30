
f.plot.matrix <- function() {
    # generate list with random values
    d.mat <- runif(100, min = 0, max = 50)

    # create matrix from list
    x <- matrix(d.mat,
        nrow = 4, byrow = TRUE)

    # plot matrix
    barplot(x)
}

#f.plot.matrix()

vec <- runif(220*5, min = 0, max = 30)
mat <- matrix(vec, nrow = 5)
barplot(mat)