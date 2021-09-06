test_that("All available colours are shown when colourname is NULL", {
  expect_equal(phs_colours(), phsstyles::phs_colour_values)
})

test_that("Hex colour is generated for specific named colours", {
  expect_equal(phs_colours("phs-blue"), "#0391BF")
  expect_equal(phs_colours(c("phs-blue", "phs-darkblue")), c("#0391BF", "#092869"))
})

test_that("Produce an error if input colours are not in the PHS colour list", {
  expect_error(phs_colours(c("phs-blue", "phs-yellow", "phs-red")))
})
