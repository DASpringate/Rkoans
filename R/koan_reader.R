
contemplate_koan <- function(test_file, koan, reporter = "summary"){
    karma <- (test_file(test_file, reporter = "summary"))
    if(!karma$failed){
        cat(sprintf("%s has expanded your awareness\n", basename(koan)))
        TRUE
    } else {
        cat(sprintf("%s has damaged your karma\n", basename(koan)))
        FALSE
    }
}

contemplate_koan(test_file = "R/koan1.R", koan = "koans/what_is_this.R", reporter = "summary")
contemplate_koan(test_file = "R/koan2.R", koan = "koans/emptiness_is_form.R", reporter = "summary")


