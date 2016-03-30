
# fetch classified data
source("npcv-data.R")

f.plot.letter <- function(letter) {
    #letters.zero <- do.call(rbind, npcv.data.load(0))
    letters.zero.frame <- npcv.data.load(letter)

    letters.zero.frame$X <- NULL

    ltm <- as.vector(t(letters.zero.frame))

    #letters.zero.list <- unlist(letters.zero.frame)
    letters.zero.matrix <- matrix(t(ltm), nrow = 5)

    #letters.zero.mat <- matrix(letters.zero, nrow = 4, byrow = TRUE)

    vc <- as.list(ltm[1:5])

     barplot(c(1:5, 1:20),
        main = letter, ylab = "Regions values",
        space = 0
#col = c("red", "green", "blue", "yellow", "purple")
        )
}

f.plot.letter(0)
