library(testthat)
library(devtools)
devtools::load_all()

testthat::test_that("Passing two numbers leads to the addition of them`", {
  testthat::expect_equal(amazingRpackage::my_add(20, 2), 22)
})

testthat::test_that("Passing two decimal numbers leads to the addition of them`", {
  testthat::expect_equal(amazingRpackage::my_add(20.5, 0.8), 21.3)
})

testthat::test_that("Passing only one number defaults the second number to 10`", {
  testthat::expect_equal(amazingRpackage::my_add(3), 13)
})

testthat::test_that("Passing one NA returns NA`", {
  testthat::expect_equal(amazingRpackage::my_add(NA), NA)
})

testthat::test_that("Passing NA for the first parameter and a number for the second leads to the result NA`", {
  testthat::expect_equal(amazingRpackage::my_add(NA, 2), NA)
})

testthat::test_that("Passing a number for the first parameter and a string for the second leads to an error`", {
  expected_error <- "One of your inputs contains a string value"
  testthat::expect_error(amazingRpackage::my_add(2, "2"), expected_error)
})

testthat::test_that("Passing a string for the first parameter and a number for the second leads to an error`", {
  expected_error <- "One of your inputs contains a string value"
  testthat::expect_error(amazingRpackage::my_add("2", 2), expected_error)
})

testthat::test_that("Passing two string for both parameters leads to an error`", {
  expected_error <- "One of your inputs contains a string value"
  testthat::expect_error(amazingRpackage::my_add("2", "2"), expected_error)
})
