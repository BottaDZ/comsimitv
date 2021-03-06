% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/randomITV.R
\name{randomITV}
\alias{randomITV}
\title{Intraspecific Trait Variation}
\usage{
randomITV(
  seeds = matrix(),
  distribs = rep("unif", 3),
  distr.parms = list(a = list(min = 0, max = 1), b = list(min = 0, max = 1), c =
    list(min = 0, max = 1)),
  sigma = diag(1, 3, 3),
  ITV.ratio = 0.01,
  ...
)
}
\arguments{
\item{seeds}{Matrix of produced seeds (with mother'trait values) as produced by
\code{\link{SeedProduction}} function}

\item{distribs}{Types of the distributions of traits (see \code{\link{Gener.species.pool}})}

\item{distr.parms}{Parameters of distribution (see \code{\link{Gener.species.pool}})}

\item{sigma}{Matrix of variance-covariance matrix of traits (see \code{\link{Gener.species.pool}})}

\item{ITV.ratio}{Ratio of within/between species variances of traits}

\item{...}{Any additional parameters}
}
\value{
Matrix of produced seeds as produced by
            \code{\link{SeedProduction}} function
}
\description{
This function adds a random noise to mother's trait values of each seed
}
\details{
The function uses parameters of \code{\link{Gener.species.pool}}. First it
transforms back mother's trait values to multivariate normal distribution.
Then random noise was added to this values. Random noise has multivariate
normal distribution, with zero means and the same  \strong{correlation} structure
as specified in parameter \emph{sigma}. \strong{Note} that \emph{sigma} specifies
covariance matrix, not correlation structure \emph{per se}. Variances in the random noise
are diagonals (i.e. variance componens) of parameter \emph{sigma} multiplied by
\emph{ITV.ratio}. The non-diagonal elements of covariance matrix were specified
 to conserve the correlation structure among traits.
}
