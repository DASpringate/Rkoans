# Operations on vectors

x <- c(1, 2, 3)
y <- c("1", "2", "3")

expect_that(is.numeric(`_`), is_true())
expect_that(is.character(`_`), is_true())

# vectors are constructed with the c() function
expect_that(c(`_`), equals(x))
expect_that(c(`_`), equals(y))

# A number is just a vector of length 1
expect_that(`_`, equals(c(123)))


# All elements of a vector are the same type
# One element can change the type of the other elements
expect_that(c(1, 2, "3"), equals(`_`))

# c() also combines vectors
expect_that(c(`_`, c(4, 5, 6)), equals(c(1, 2, 3, 4, 5, 6)))

# Use `:` to get a range of numbers
expect_that(1:3, equals(`_`))

# Select elements of a vector with square brackets and an index
expect_that(y[`_`], equals("2"))

# select a range of elements with `:`
expect_that(y[2:3], equals(c(`_`)))

# or with another vector of indexes
expect_that(y[c(1, 3)], equals(c(`_`)))

# You can name the elements of a vector
names(x) <- c("a", "b", "c")
expect_that(names(x), equals(c(`_`)))



