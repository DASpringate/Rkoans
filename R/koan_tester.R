#' reads in a koan file to a character string
#' @name readin_koan
#' @param koan_file character path to koan file
#' @return character
readin_koan <- function(koan_file){
    readChar(koan_file, nchars = file.info(koan_file)$size)
}


#' Tests if the given answers pass all tests in the koan
#' @name test_koan
#' @param name character the name of the koan matching the file name minus the file extension
#' @param answer character vector of ordered answers for a koan (answers replace `_`)
#' @param detail logical if TRUE, throws an exception detailing the position of the failing test. if false, returns false for a broken test
#' @return logical or error (see param detail)
test_koan <- function(name, answer, detail = FALSE){
    koan <- readin_koan(file.path("koans", paste0(name, ".R")))
    for(i in answer){
        koan <- str_replace(koan, "`_`", as.character(i))
    }
    if(detail){
        eval(parse(text = koan))
    } else {
        result <- try(eval(parse(text = koan)), silent = TRUE)
        ifelse(class(result) == "try-error", FALSE, TRUE)
    }
}


#' Runs checks on all answer files and koan files
#' This needs to return true before new koans are ready to be applied
#' @name test_all_koans
#' @param koan_file character path to the list of koans
#' @param answers_file character path to list of answers
#' @return TRUE if all tests pass, otherwise an exception with details about the failing test
#' @export
test_all_koans <- function(koan_file = "R/koans.R", answers_file = "answers/koans.R"){
    source(answers_file, local = TRUE)
    source(koan_file, local = TRUE)
    for(koan in koans){
        name <- str_replace(basename(koan$koan), "\\.R", "")
        if(!test_koan(name, answers[[name]])){
            message(sprintf("Failed tests in answers for %s\n  Check answers in %s.\n", 
                         koan$koan,
                         "answers/koans.R"))
            test_koan(name, answers[[name]], detail = TRUE)
        }
    }
    cat(sprintf("Congratulations, all tests pass the koan checker!\n"))
    TRUE
}
 