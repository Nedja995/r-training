
# fetch classified data
source("npcv-data.R")

f.plot.letter <- function(letter) {
    #letters.zero <- do.call(rbind, npcv.data.load(0))
    letters.zero.frame <- npcv.data.load(letter)

    letters.zero.frame$X <- NULL

    ltm <- as.vector(t(letters.zero.frame))

    letters.zero.matrix <- matrix(t(ltm), nrow = 5)

     bp <-barplot(letters.zero.matrix,
            main = letter,
            ylab = "Regions values",
            xlab = "Samples",
            yaxt = "n",
            space = 0,
            col = c("red", "blue", "yellow", "green", "black")
            )
    axis(1)
    }

f.plot.letter(0)
f.plot.letter(1)
f.plot.letter(2)
f.plot.letter(3)
f.plot.letter(4)