func.data.clean <- function(letter) {
    path.root <- "D:\\Projects\\CompVision\\npcv-c\\examples\\datas\\output\\old\\classified\\test1\\";

    path.file <- paste(path.root, toString(letter), ".csv", sep = "");
    path.file.new <- paste(path.root, toString(letter), "clean.csv", sep = "");

    content <- read.csv(path.file);

    content.new <- content[0:5];
    names(content.new) <- c(1, 2, 3, 4, 5);

    write.csv(content.new, path.file.new);
}

func.data.clean.all <- function() {
    for (i in 0:4) {
        func.data.clean(toString(i));
    }

}

npcv.data.load <- function(letter) {
    path.root <- "D:\\Projects\\CompVision\\npcv-c\\examples\\datas\\output\\old\\classified\\test1\\";

    path.file <- paste(path.root, toString(letter), "clean.csv", sep = "");
    x <- read.csv(path.file);
    return(x);
}