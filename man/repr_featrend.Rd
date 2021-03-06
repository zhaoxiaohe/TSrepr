% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{repr_featrend}
\alias{repr_featrend}
\title{FeaTrend representation of time series}
\usage{
repr_featrend(x, func, pieces = 2L, order = 4L)
}
\arguments{
\item{x}{the numeric vector (time series)}

\item{func}{the function of aggregation, can be sumC or maxC or similar aggregation function}

\item{pieces}{the number of parts of time series to split (default to 2)}

\item{order}{the order of simple moving average (default to 4)}
}
\value{
the numeric vector of the length pieces
}
\description{
The \code{repr_featrend} computes representation of time series based on feature extraction from bit-level (trending) representation.
}
\details{
FeaTrend is method of time series representation based on feature extraction from run lengths (RLE) of bit-level (trending) representation.
It extracts number of features from trending representation based on number of pieces defined.
From every piece, 2 features are extracted. You can define what feature will be extracted,
recommended functions are max and sum. For example if max is selected, then maximum value of run lengths of ones and zeros are extracted.
}
\examples{
# default settings
repr_featrend(rnorm(50), maxC)

# compute FeaTrend for 4 pieces and make more smoothed ts by order = 8
repr_featrend(rnorm(50), sumC, 4, 8)

}
\seealso{
\code{\link[TSrepr]{repr_feaclip}, \link[TSrepr]{repr_feacliptrend}}
}
\author{
Peter Laurinec, <tsreprpackage@gmail.com>
}
