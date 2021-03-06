% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cmdscale_landmarks.R
\name{cmdscale_landmarks}
\alias{cmdscale_landmarks}
\title{Perform MDS on landmarks and project other samples to the same space}
\usage{
cmdscale_landmarks(dist_2lm, ndim = 3, rescale = TRUE, ...)
}
\arguments{
\item{dist_2lm}{Distance matrix between the landmarks and all the samples in original dataset}

\item{ndim}{The number of dimensions}

\item{rescale}{Whether or not to rescale the final dimensionality reduction (recommended)}

\item{...}{Extra params to pass to \code{\link[irlba:irlba]{irlba::irlba()}}}
}
\value{
The dimensionality reduction in the form of a \code{ncol(dist_2lm)} by \code{ndim} matrix.
}
\description{
Perform MDS on landmarks and project other samples to the same space
}
\examples{
library(Matrix)
x <- as.matrix(iris[,1:4])
dist_2lm <- select_landmarks(x)
cmdscale_landmarks(dist_2lm)
}
