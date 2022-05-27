#' Convertir NULL a valor
#'
#' @param x Vector o escalar de cualquier tipo
#' @param replace Valor de reemplazo. Generalmente NA o derivados
#'
#' @return Vector con el reemplazo especificado
#' @export
#'
#' @examples
#' replace_null(NULL, "")
replace_null <- function(x, replace) {
    ifelse(is.null(x), replace, x)
}
