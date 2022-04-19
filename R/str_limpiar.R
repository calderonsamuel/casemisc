#' Limpiar cadenas de texto hacia ASCII
#'
#' @param str Una cadena de texto a limpiar
#' @param locale Local de la cadena de texto (solo para mayúsculas)
#'
#' @return Una cadena de texto en mayúsculas, sin espacios duplicados y en versión ASCII
#' @export
#'
#' @examples
#' str_limpiar("avión")
#' str_limpiar("un  exámen")
str_limpiar <- function(str, locale = "en") {

    new_str <- stringi::stri_trans_toupper(str = str, locale = locale)
    new_str <- stringr::str_squish(new_str)
    new_str <- stringi::stri_trans_general(new_str, "Latin-ASCII")

    return(new_str)
}
