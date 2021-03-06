\name{estimate_richness}
\alias{estimate_richness}
\title{Summarize alpha diversity}
\usage{
  estimate_richness(physeq, split = TRUE, measures = NULL)
}
\arguments{
  \item{physeq}{(Required). \code{\link{phyloseq-class}},
  or alternatively, an \code{\link{otu_table-class}}. The
  data about which you want to estimate the richness.}

  \item{split}{(Optional). Logical. Should a separate set
  of richness estimates be performed for each sample? Or
  alternatively, pool all samples and estimate richness of
  the entire set.}

  \item{measures}{(Optional). Default is \code{NULL},
  meaning that all available alpha-diversity measures will
  be included. Alternatively, you can specify one or more
  measures as a character vector of measure names. Values
  must be among those supported: \code{c("Observed",
  "Chao1", "ACE", "Shannon", "Simpson", "InvSimpson",
  "Fisher")}.}
}
\value{
  A \code{data.frame} of the richness estimates, and their
  standard error.
}
\description{
  Performs a number of standard alpha diversity estimates,
  and returns the results as a \code{data.frame}. Strictly
  speaking, this function is not only estimating richness,
  despite its name. It can operate on the cumulative
  population of all samples in the dataset, or by repeating
  the richness estimates for each sample individually.
  NOTE: You must use untrimmed datasets for meaningful
  results, as these estimates (and even the ``observed''
  richness) are highly dependent on the number of
  singletons. You can always trim the data later on if
  needed, just not before using this function.
}
\examples{
## There are many more interesting examples at the phyloseq online tutorials.
## http://joey711.github.com/phyloseq/plot_richness-examples
data("esophagus")
# Default is all available measures
estimate_richness(esophagus)
# Specify just one:
estimate_richness(esophagus, measures="Observed")
# Specify a few:
estimate_richness(esophagus, measures=c("Observed", "InvSimpson", "Shannon", "Chao1"))
}
\seealso{
  Check out the custom plotting function,
  \code{\link{plot_richness}}, for easily showing the
  results of different estimates, with method-specific
  error-bars. Also check out the internal functions
  borrowed from the \code{vegan} package:

  \code{\link[vegan]{estimateR}}

  \code{\link[vegan]{diversity}}

  \code{\link[vegan]{fisherfit}}
}

