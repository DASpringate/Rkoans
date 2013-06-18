\name{test_all_koans}
\alias{test_all_koans}
\title{Runs checks on all answer files and koan files
This needs to return true before new koans are ready to be applied}
\usage{
  test_all_koans(koan_file = "R/koans.R",
    answers_file = "answers/koans.R")
}
\arguments{
  \item{koan_file}{character path to the list of koans}

  \item{answers_file}{character path to list of answers}
}
\value{
  TRUE if all tests pass, otherwise an exception with
  details about the failing test
}
\description{
  Runs checks on all answer files and koan files This needs
  to return true before new koans are ready to be applied
}

