# Everything is a function
# You can use backticks to get the syntactic names of operators:


expect_that(`+`(1, 2), equals(`_`))
expect_that(class(`%*%`), prints_text(`_`))
expect_that(`:`(1, 10), equals(`_`))
expect_that(`+`, is_a(`_`))
expect_that(`%%`(`:`(1, 10), 2), equals(`_`))
expect_that(`(`, is_a(`_`))
expect_that(`%in%`("r", letters), equals(`_`))

x <- 1:5
expect_that(`[`(x, 5), equals(`_`))





