% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/loading_functions.R
\name{read.experiment.file}
\alias{read.experiment.file}
\title{Read data from an experiment-like file}
\usage{
read.experiment.file(file, alg.col, value.col, col.names = NULL, ...)
}
\arguments{
\item{file}{Path to the file to read.}

\item{alg.col}{Name or index of the column corresponding to the algorithm used in the experiment.}

\item{value.col}{Name or index of the column corresponding to the numerical result of the experiment.}

\item{...}{Additional parameters for the read.csv function used to load the data. It can be used, for example, to set the separator (e.g., \code{sep="\t"}).}
}
\value{
A data.frame where each column represents either a feature of the experiment or the result of running an algorithm. Algorithm columns are placed always at the end of the table.
}
\description{
This function reads the data from a file where each row is an experiment characterized by some variables (one of which should be the algorithm used) and with one and only one numeric result. for files where there is more than one result per line see \code{\link{read.comparison.file}}.
}
\examples{
dir <- system.file("loading_tests",package="scma")
file <- paste(dir , "beta_complete_experiment.out" , sep="/")
data <- read.experiment.file (file = file , alg.col = 'algorithm' , value.col = 'error')
dim(data)
head(data)
}
\seealso{
\code{\link{read.experiment.dir}}, \code{\link{read.comparison.file}}, \code{\link{read.comparison.dir}}
}

