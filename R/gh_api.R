#' Obtener issues de un repositorio de Github
#'
#' Estas funciones son wrappers de gh::gh para obtener más rápidamente el resultado de una búsqueda
#'
#' @param owner Nombre de usuario de Github
#' @param repo Nombre de repositorio. Si no se especifica utiliza el directorio de trabajo actual.
#' @param state Estado del issue. Puede ser 'open' (default), 'closed' o 'all'
#' @param ... Otros parámetros para el query
#'
#' @return Una lista con clase 'gh_response'
#' @export
#'
#' @examples
#' gh_repos_issues(owner = "calderonsamuel", repo = "casemisc")
gh_repos_issues <- function(owner = "calderonsamuel", repo = ".", state = "open", ...) {
    repo <- if (repo == ".") basename(here::here()) else repo

    gh::gh(
        "/repos/{owner}/{repo}/issues",
        owner = owner,
        repo = repo,
        state = match.arg(state, c("open", "closed", "all")),
        ...
    )
}

check_remote_info <- function() {
    url <- system("git remote get-url origin", intern = TRUE) # gert::git_remote_info()$url
}

