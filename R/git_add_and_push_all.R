#' Push inmediato
#'
#' Para uso interactivo. Hace add a todos los archivos nuevos y modificados, luego les aplica un commit y les hace push.
#' Es una versión menos segura que gert::git_commit_all().
#'
#' @param message Mensaje del commit
#' @param author Autor del commit
#'
#' @return Un valor SHA
#' @export
#'
#' @examples
#' git_add_and_commit_all("first")
#' git_add_and_commit_all("update", author = "Otro autor")
git_add_and_push_all <- function(message = NULL, author = NULL) {

    if (!is.character(message)) stop("Se necesita un texto de mensaje")

    gert::git_add(files = ".")
    gert::git_commit(message = message, author = author)
    gert::git_push()
}
