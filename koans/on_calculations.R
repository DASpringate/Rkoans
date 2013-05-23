# R can be used to perform simple aritmetic calculations

# Basic maths operators

# R can add and take away!
expect_that(1 + 1, equals(`_`))
expect_that(1 - 1, equals(`_`))

# And multiply and divide..

expect_that(10 * 9, equals(`_`))
expect_that(4096 / 16, equals(`_`))

# And take powers:

expect_that(200 ^ 2, equals(`_`))

# The remainder of division is very important!

expect_that(100 %% 10, equals(`_`))
expect_that(10 %% 3, equals(`_`))
expect_that(256 %% 2, equals(`_`))

# Other maths operations use functions
# a function is written as a function_name with arguments to the function in parentheses:
# exponentials, logs and squareroots:

expect_that(sqrt(40000), equals(`_`))
expect_that(log10(10000), equals(`_`))
expect_that(exp(2), equals(`_`))
expect_that(log(exp(3)), equals(`_`)) # functions can be nested

# What do these functions do?

expect_that(abs(-100), equals(`_`))
expect_that(ceiling(6.03), equals(`_`))
expect_that(floor(8.97), equals(`_`))
expect_that(trunc(pi), equals(`_`))
expect_that(sign(12), equals(`_`))
expect_that(sign(0), equals(`_`))
expect_that(sign(-12), equals(`_`))

# Some functions can take more than one argument:
expect_that(round(pi, digits = 3), equals(`_`))
expect_that(signif(pi, digits = 3), equals(`_`))


