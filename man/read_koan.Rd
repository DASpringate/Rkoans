\name{read_koan}
\alias{read_koan}
\title{Reads in a test file}
\usage{
  read_koan(test_file, koan, reporter = "summary")
}
\arguments{
  \item{test_file}{the koan file currently being studied}

  \item{koan}{current koan}

  \item{reporter}{passed to testthat}
}
\value{
  logical TRUE if all tests pass, otherwise FALSE
}
\description{
  Reads in a file of testthat asserts
}

