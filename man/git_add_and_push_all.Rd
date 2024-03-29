% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/git_add_and_push_all.R
\name{git_add_and_push_all}
\alias{git_add_and_push_all}
\title{Push inmediato}
\usage{
git_add_and_push_all(message = NULL, author = NULL)
}
\arguments{
\item{message}{Mensaje del commit}

\item{author}{Autor del commit}
}
\value{
Un valor SHA
}
\description{
Para uso interactivo. Hace add a todos los archivos nuevos y modificados, luego les aplica un commit y les hace push.
Es una versión menos segura que gert::git_commit_all().
}
\examples{
#git_add_and_push_all("first")
#git_add_and_push_all("update", author = "Otro autor")
}
