source("npcv-data.R")

func.data.draw <- function(letter) {
    samples <- npcv.data.load(letter)

    #get first column values for initialize plot
    samples.values.first <- samples$X1

    #init plot datas
    x <- runif(nrow(samples), min = 1, max = 5)

    #draw plot with first colum values
    plot(1:nrow(samples), x, type="b", main = "Bivariate ?scatter plot? of y vs x")

    #iterate throught samples and add their points to plot
    for (i in 1:nrow(samples)) {
        sample <- unlist(samples[i,])
        sample <- sample[2:6]

        points(i, sample[1], col="red")
        points(i, sample[2], col = "blue")
        points(i, sample[3], col = "green")
        points(i, sample[4], col = "purple")
        points(i, sample[5], col = "yellow")
    }
    

    sample1 <- unlist(samples[1,])
    sample1 <- sample1[2:6]
   # return(array(sample1))
    #axis.regions <- runif(5, min = 1, max = 5)
   # plot(x$X1, x$X2);

    #init plot datas
    x <- runif(nrow(samples), min = 1, max = 5)
    y <- x ^ 2 + runif(nrow(samples))
 #   plot(1:nrow(samples), x, main = "Bivariate ?scatter plot? of y vs x")
   # plot(sort(x), main = "Plot of x against index 1, 2, ..., length(x)")
#    plot(1:nrow(samples), samples.values.first, main = "Bivariate ?scatter plot? of y vs x")
  #  points(60, 1)
  #  points(60, 2)
}

func.data.draw(0)