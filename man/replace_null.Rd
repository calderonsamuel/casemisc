% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/replace_null.R
\name{replace_null}
\alias{replace_null}
\title{Convertir NULL a valor}
\usage{
replace_null(x, replace)
}
\arguments{
\item{x}{Vector o escalar de cualquier tipo}

\item{replace}{Valor de reemplazo. Generalmente NA o derivados}
}
\value{
Vector con el reemplazo especificado
}
\description{
Convertir NULL a valor
}
\examples{
replace_null(NULL, "")
}
