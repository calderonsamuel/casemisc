% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/str_limpiar.R
\name{str_limpiar}
\alias{str_limpiar}
\title{Limpiar cadenas de texto hacia ASCII}
\usage{
str_limpiar(str, locale = "en")
}
\arguments{
\item{str}{Una cadena de texto a limpiar}

\item{locale}{Local de la cadena de texto (solo para mayúsculas)}
}
\value{
Una cadena de texto en mayúsculas, sin espacios duplicados y en versión ASCII
}
\description{
Limpiar cadenas de texto hacia ASCII
}
\examples{
str_limpiar("avión")
str_limpiar("un  exámen")
}
