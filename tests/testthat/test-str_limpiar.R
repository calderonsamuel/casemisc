test_that("str_limpiar funciona", {
    expect_equal(str_limpiar("un\t\tavión"), "UN AVION")
    expect_equal(str_limpiar("universidad de   huánuco"), "UNIVERSIDAD DE HUANUCO")
})
