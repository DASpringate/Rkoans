### Subsetting your data ###

# This is to select the specific sections of your dataset to be cleaned/edited/transformed
# This is a crucial part of most aspects of R programing, not just cleaning data.
# R is very flexible! There are many different ways to do the same thing… This can cause confusion!

# [ selects an element or a range of elements

# First, build a named vector of letters:
x <- letters
names(x) <-  paste0("letter_", 1:length(letters))

# Selecting vector elements by name:

expect_that(x["letter_10"], is_equivalent_to("j"))
expect_that(x["letter_20"], is_equivalent_to("t"))
expect_that(x[c("letter_1", 
                "letter_10", 
                "letter_20")], is_equivalent_to(c("a", "j", "t")))
expect_that(x[c("letter_7", 
                "letter_14", 
                "letter_21")], is_equivalent_to(c("g", "n", "u")))
# Bonus Unit-testing karma - Why is_equivalent_to() but not equals()?

# Selecting vector elements by index:

expect_that(x[], equals(x))
expect_that(x[17], is_equivalent_to("q"))
expect_that(x[1:5], is_equivalent_to(c("a", "b", "c", "d", "e")))
expect_that(x[seq(from = 1, to = 26, by = 6)], is_equivalent_to(c("a", "g", "m", "s", "y")))

expect_that(names(x[17]), equals("letter_17"))





