#' Reads in a test file
#' @name read_koan
#' @description Reads in a file of testthat asserts
#' @param test_file the koan file currently being studied
#' @param koan current koan
#' @param reporter passed to testthat
#' @return logical TRUE if all tests pass, otherwise FALSE
read_koan <- function(test_file, koan, reporter = "summary"){
    karma <- (test_file(test_file, reporter = "summary"))
    if(!karma$failed){
        cat(sprintf("You have seen through %s!\n", basename(koan)))
        TRUE
    } else {
        cat(sprintf("%s %s\n", basename(koan), sample(incomplete_wisdom, 1)))
        FALSE
    }
}

#' Build a template file to run testthat over
#' @name koan_template
koan_template <- function(context, title, path, koan_file){
    cat(sprintf(
        'context("%s")\ntest_that("%s",{\n  `_` <- NULL\n  source(file.path("..", "%s"), local = TRUE)\n})', 
        context, title, path),
        file = koan_file )
}

# make this more elegant!
# koan <- koans[[1]]
# koan_template(koan$context, koan$title, koan$koan, koan$test_file)
# 
# k <- read_koan(test_file = koan$test_file, koan = koan$koan, reporter = "summary")

#' Reads in a list of koans. If one fails it halts
#' @name read_koans
read_koans <- function(){
    for(koan in koans){
        koan_template(koan$context, koan$title, koan$koan, "temp/koan.R")
        k <- read_koan(test_file = "temp/koan.R", koan = koan$koan, reporter = "summary")
        if(!k) return(cat("Study this koan to deepen your practice...\n"))
        
    }
    cat("You are now the master, there is no more I can teach you.\n", file = "koans/master")
}

#' Conditions for continuing watch loop
#' @name koan_watcher
koan_watcher <- function(added, deleted, modified){
    master <- "koans/master"
    if(file.exists(master)){
        cat(readChar("koans/master", file.info("koans/master")$size))
        return(FALSE)
    }
    if(length(modified)) {
        read_koans()
        return(TRUE)
    }
    if(length(deleted)) {
        cat("deleted", deleted)
        cat("You may have broken something!\n")
        read_koans()
        return(TRUE)
    }
}

#' Main loop for running koan study
#' @name study_koans
#' @export
study_koans <- function(){
    master <- "koans/master"
    source("R/koans.R")    
    read_koans()
    if(file.exists(master)){
        cat(readChar("koans/master", file.info("koans/master")$size))
        file.remove(master)
        return()
    }
    watch("koans/", koan_watcher)
    if(file.exists(master)){
        cat(readChar("koans/master", file.info("koans/master")$size))
        file.remove(master)
        return()
    }
}

