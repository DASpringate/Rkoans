#' Reads in a test file
#' @name read_koan
#' @description Reads in a file of testthat asserts
read_koan <- function(test_file, koan, reporter = "summary"){
    karma <- (test_file(test_file, reporter = "summary"))
    if(!karma$failed){
        cat(sprintf("%s has expanded your awareness\n", basename(koan)))
        TRUE
    } else {
        cat(sprintf("%s has damaged your karma\n", basename(koan)))
        FALSE
    }
}

#' Reads in a list of koans. If one fails it halts
#' @name read_koans
read_koans <- function(){
    for(koan in koans){
        k <- eval(parse(text = koan))
        if(!k) return(cat("Check this file to acheive enlightenment...\n"))
        
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

#' Main loop for runing koan study
#' @name study_koans
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

