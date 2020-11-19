test_that("Testing the calculation of generations", {
  expect_equal(max(gen(c(1559, 1996, 1448, 1668, 1773), generationtime = 10)), 55) #testing to make sure changing the generationtime works (from default [25] to 10)
  expect_equal(max(gen(c(1559, NA, 1448, NA, 1773), generationtime = 10)), 33) #testing to make sure na.rm works
  expect_equal(max(gen(c(0), generationtime = 10)), 0) #testing to make sure that "strange entries", like zeroes, don't throw errors
})
