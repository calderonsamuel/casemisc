#' Revisar si un data.frame tiene contiene list.columns
#'
#' @param dat Un data.frame
#'
#' @return Un data.frame con la primera columna conteniendo el número de filas
has_list_columns <- function(dat) {
    Reduce(any, lapply(dat, is.list))
}


#' Agregar numero de fila
#'
#' Agrega una primera columna que contiene los numeros de fila y el nombre
#' especificado. Pensado como paso final para tablas a renderizar en R Markdown.
#'
#' @param dat Un data.frame
#' @param .rows_name (chr) Nombre para la columna
#'
#' @return Un data.frame
#' @export
#'
#' @examples
#' add_row_numbers(iris, "n_fila")
add_row_numbers <- function(dat, .rows_name = NULL) {
    if (!is.data.frame(dat)) stop("'dat' must be a data.frame")
    if (has_list_columns(dat)) stop("'dat' has list columns")

    row_numbers <- seq_len(nrow(dat))
    with_first_col <- c(list(.column_name = row_numbers), dat)
    names(with_first_col)[1] <- .rows_name
    as.data.frame(with_first_col)
}

