### Subsetting your data ###

# This is to select the specific sections of your dataset to be cleaned/edited/transformed
# This is a crucial part of most aspects of R programing, not just cleaning data.
# R is very flexible! There are many different ways to do the same thing… This can cause confusion!

# [ selects an element or a range of elements

# First, build a named vector of letters:
x <- letters
names(x) <-  paste0("letter_", 1:length(letters))

# Selecting vector elements by name:

expect_that(x["letter_10"], is_equivalent_to(`_`))
expect_that(x[`_`], is_equivalent_to("t"))
expect_that(x[c("letter_1", 
                "letter_10", 
                "letter_20")], is_equivalent_to(`_`))
expect_that(x[`_`], is_equivalent_to(c("g", "n", "u")))
# Bonus Unit-testing karma - Why is_equivalent_to() but not equals()?

# Selecting vector elements by index:
# It may help to run the code within the brackets separately...

expect_that(x[], equals(`_`)) # Remember this for when you do matrix subsetting!
expect_that(x[17], is_equivalent_to(`_`))
expect_that(x[c(3,5,1)], is_equivalent_to(c(`_`)))
expect_that(x[1:5], is_equivalent_to(c(`_`)))
expect_that(x[seq(from = 1, to = 26, by = 6)], is_equivalent_to(c(`_`)))
expect_that(names(x[17]), equals(`_`))
expect_that(names(x)[`_`], equals("letter_17"))
expect_that(x[names(x)[c(3,2,1)]], is_equivalent_to(`_`))

# Selecting vector elements by boolean (TRUE/FALSE) values
# Returns all elements where the corresponding logical value is TRUE

y <- 1:26
names(y) <- x

expect_that(y[y == 21], is_equivalent_to(`_`))
expect_that(y[y > 21], is_equivalent_to(`_`))
expect_that(y[y <= 4], is_equivalent_to(`_`))
expect_that(names(y[y <= 4]), equals(`_`))
expect_that(y[y < 3 | y > 24], is_equivalent_to(`_`))
z <- y[y %% 2 == 0 & y > 10]
expect_that(z, is_equivalent_to(`_`))





