## On lists...

# lists are a very important data structure in R. They have two main differences from vectors:
# 1. Vector elements are all of the same type.  List elements can be of any type.
# 2. Vectors are flat, lists can be nested to give recursive, tree-like structures.

my_vector <- c(1, "2", TRUE)
my_list <- list(1, "2", TRUE)

expect_that(class(my_vector), equals(`_`)) 
expect_that(class(my_list), equals(`_`))

### Subsetting lists ###

# Single brackets return a list containing the elements within the brackets


expect_that(class(my_list[1]), equals(`_`))
expect_that(my_list[1], equals(list(`_`)))
expect_that(my_list[2:3], equals(list(`_`)))

# You can access individual elements of a list with double brackets:

expect_that(class(my_list[[1]]), equals(`_`))
expect_that(class(my_list[[2]]), equals(`_`))
expect_that(class(my_list[[3]]), equals(`_`))

expect_that(my_list[[1]], equals(`_`))

# You can pass expressions to double bracket subsets:

expect_that(my_list[[1000 - 998]], equals(`_`))

# but you can't select multiple elements (because this doesn't return a list):

expect_that(my_list[[2:3]], throws_error(`_`))

## You can name elements of a list as you build it...

named_list <- list(x = 12, y = 6, z = 24)
expect_that(names(named_list), equals(c(`_`)))

# ... or afterwards...

names(my_list) <- c(`_`)

# ... you can select named list elements using the $ operator:

expect_that(named_list$x, equals(`_`))
expect_that(my_list$boolean, equals(`_`))

## lists can hold any data structure 
# ...including functions...

list2 <- list(1:20, sum)
expect_that(list2[[2]](list2[[1]]), equals(`_`))

# ... and other lists...

list3 <- list(list(1,2,3), list(4,5,6), list(7,8, list (9, 10, list(11, 12, 13, 14))))

expect_that(length(list3), equals(`_`))
expect_that(length(list3[[3]]), equals(`_`))
expect_that(length(list3[[3]][[3]]), equals(`_`))
expect_that(length(list3[[3]][[3]][[3]]), equals(`_`))

## lists can be flattened to vectors using unlist()
expect_that(class(unlist(list3)), equals(`_`))
expect_that(length(unlist(list3)), equals(`_`))

## You can concatenate the elements of multiple lists using c()

expect_that(c(my_list, named_list), equals(list(`_`)))





