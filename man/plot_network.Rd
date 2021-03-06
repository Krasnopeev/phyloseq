\name{plot_network}
\alias{plot_network}
\title{Microbiome Network Plot using ggplot2}
\usage{
  plot_network(g, physeq=NULL, type="samples", color=NULL,
  shape=NULL, point_size=4, alpha=1, label="value", hjust =
  1.35, line_weight=0.5, line_color=color, line_alpha=0.4,
  layout.method=layout.fruchterman.reingold, title=NULL)
}
\arguments{
  \item{g}{(Required). An \code{igraph}-class object
  created either by the convenience wrapper
  \code{\link{make_network}}, or directly by the tools in
  the igraph-package.}

  \item{physeq}{(Optional). Default \code{NULL}. A
  \code{\link{phyloseq-class}} object on which \code{g} is
  based.}

  \item{type}{(Optional). Default \code{"samples"}. Whether
  the network represented in the primary argument,
  \code{g}, is samples or taxa/OTUs. Supported arguments
  are \code{"samples"}, \code{"taxa"}, where \code{"taxa"}
  indicates using the taxa indices, whether they actually
  represent species or some other taxonomic rank.}

  \item{color}{(Optional). Default \code{NULL}. The name of
  the sample variable in \code{physeq} to use for color
  mapping of points (graph vertices).}

  \item{shape}{(Optional). Default \code{NULL}. The name of
  the sample variable in \code{physeq} to use for shape
  mapping. of points (graph vertices).}

  \item{point_size}{(Optional). Default \code{4}. The size
  of the vertex points.}

  \item{alpha}{(Optional). Default \code{1}. A value
  between 0 and 1 for the alpha transparency of the vertex
  points.}

  \item{label}{(Optional). Default \code{"value"}. The name
  of the sample variable in \code{physeq} to use for
  labelling the vertex points.}

  \item{hjust}{(Optional). Default \code{1.35}. The amount
  of horizontal justification to use for each label.}

  \item{line_weight}{(Optional). Default \code{0.3}. The
  line thickness to use to label graph edges.}

  \item{line_color}{(Optional). Default \code{color}. The
  name of the sample variable in \code{physeq} to use for
  color mapping of lines (graph edges).}

  \item{line_alpha}{(Optional). Default \code{0.4}. The
  transparency level for graph-edge lines.}

  \item{layout.method}{(Optional). Default
  \code{layout.fruchterman.reingold}. A function (closure)
  that determines the placement of the vertices for drawing
  a graph. Should be able to take an \code{igraph}-class as
  sole argument, and return a two-column coordinate matrix
  with \code{nrow} equal to the number of vertices. For
  possible options already included in
  \code{igraph}-package, see the others also described in
  the help file:}

  \item{title}{(Optional). Default \code{NULL}. Character
  string. The main title for the graphic.

  \code{\link[igraph]{layout.fruchterman.reingold}}}
}
\value{
  A \code{\link{ggplot}}2 plot representing the network,
  with optional mapping of variable(s) to point color or
  shape.
}
\description{
  There are many useful examples of phyloseq network
  graphics in the
  \href{http://joey711.github.io/phyloseq/plot_network-examples}{phyloseq
  online tutorials}. A custom plotting function for
  displaying networks using advanced
  \code{\link[ggplot2]{ggplot}}2 formatting. The network
  itself should be represented using the \code{igraph}
  package. For the \code{\link{phyloseq-package}} it is
  suggested that the network object (argument \code{g}) be
  created using the \code{\link{make_network}} function,
  and based upon sample-wise or taxa-wise microbiome
  ecological distances calculated from a phylogenetic
  sequencing experiment (\code{\link{phyloseq-class}}). In
  this case, edges in the network are created if the
  distance between nodes is below a potentially arbitrary
  threshold, and special care should be given to
  considering the choice of this threshold.
}
\examples{
data(enterotype)
ig <- make_network(enterotype, max.dist=0.3)
plot_network(ig, enterotype, color="SeqTech", shape="Enterotype", line_weight=0.3, label=NULL)
# Change distance parameter
ig <- make_network(enterotype, max.dist=0.2)
plot_network(ig, enterotype, color="SeqTech", shape="Enterotype", line_weight=0.3, label=NULL)
}
\references{
  This code was adapted from a repo original hosted on
  GitHub by Scott Chamberlain:
  \url{https://github.com/SChamberlain/gggraph}

  The code most directly used/modified was first posted
  here:
  \url{http://www.r-bloggers.com/basic-ggplot2-network-graphs/}
}
\seealso{
  \code{\link{make_network}}
}

