# TRUE is TRUE, FALSE is FALSE
expect_that(`_`, equals(TRUE))
expect_that(`_`,  equals(FALSE))

# Use is. functions to check for data types
expect_that(is.numeric(`_`), is_true())
expect_that(is.character(`_`), is_true())
expect_that(is.null(`_`), is_true())
expect_that(is.na(`_`), is_true())

# Boolean tests
expect_that(`_`,  equals(2))
expect_that(1 > `_`,  is_true())
expect_that(2 < `_`,  is_true())
expect_that(1 >= `_`,  is_true())
expect_that(2 <= `_`,  is_true())


# zeros and ones map to boolean values
expect_that(`_` == 1, is_true())
expect_that(`_` == 0,   is_true())

