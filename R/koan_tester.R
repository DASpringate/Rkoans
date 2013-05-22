readin_koan <- function(koan_file){
    readChar(koan_file, nchars = file.info(koan_file)$size)
}


#' Tests if the given answers pass all tests in the koan
#' @name test_koan 
test_koan <- function(name, answer){
    koan <- readin_koan(file.path("koans", paste0(name, ".R")))
    for(i in answer){
        koan <- str_replace(koan, "`_`", as.character(i))
    }
    result <- try(eval(parse(text = koan)), silent = TRUE)
    ifelse(class(result) == "try-error", FALSE, TRUE)
}


#' Runs checks on all answer files and koan files
#' This needs to return true before new koans are ready to be applied
#' @name test_all_koans
test_all_koans <- function(koan_file = "R/koans.R", answers_file = "answers/koans.R"){
    source(answers_file, local = TRUE)
    source(koan_file, local = TRUE)
    for(koan in koans){
        name <- str_replace(basename(koan$koan), "\\.R", "")
        if(!test_koan(name, answers[[name]])){
            stop(sprintf("Failed tests in answers for %s\n  Check answers in %s.\n", 
                         koan$koan,
                         "answers/koans.R"))
        }
    }
    cat(sprintf("Congratulations, all tests pass for koan checks\n"))
    TRUE
}
 