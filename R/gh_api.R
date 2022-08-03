gh_repos_issues <- function(owner = "calderonsamuel", repo = ".", state = "open") {
    repo <- if (repo == ".") basename(here::here()) else repo

    gh::gh(
        "/repos/{owner}/{repo}/issues",
        owner = owner,
        repo = repo,
        state = match.arg(state, c("open", "closed", "all"))
    )|>
        jsonlite::toJSON() |>
        jsonlite::fromJSON(flatten = TRUE)
}

