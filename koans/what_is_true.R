# TRUE is TRUE, FALSE is FALSE
expect_that(FALSE, is_true())
expect_that(TRUE,  is_false())
expect_that(!TRUE,  is_true())
expect_that(!FALSE,  is_false())

# Use is. functions to check for data types
expect_that(is.numeric("10"), is_true())
expect_that(is.character(10), is_true())
expect_that(is.null("something"), is_true())
expect_that(is.na("something else"), is_true())

# Boolean tests
expect_that(1,  equals(2))
expect_that(1 > 2,  is_true())
expect_that(2 < 1,  is_true())
expect_that(1 >= 2,  is_true())
expect_that(2 <= 1,  is_true())

expect_that(FALSE == 1, is_true())
expect_that(TRUE == 0,   is_true())
expect_that(TRUE == 2,   is_true())