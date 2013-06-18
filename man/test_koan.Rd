\name{test_koan}
\alias{test_koan}
\title{Tests if the given answers pass all tests in the koan}
\usage{
  test_koan(name, answer, detail = FALSE)
}
\arguments{
  \item{name}{character the name of the koan matching the
  file name minus the file extension}

  \item{answer}{character vector of ordered answers for a
  koan (answers replace `_`)}

  \item{detail}{logical if TRUE, throws an exception
  detailing the position of the failing test. if false,
  returns false for a broken test}
}
\value{
  logical or error (see param detail)
}
\description{
  Tests if the given answers pass all tests in the koan
}

