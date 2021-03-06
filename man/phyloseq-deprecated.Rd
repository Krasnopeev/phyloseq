\docType{package}
\name{phyloseq-deprecated}
\alias{deprecated_phyloseq_function}
\alias{filterfunSample}
\alias{genefilterSample}
\alias{getSamples}
\alias{getSpecies}
\alias{getTaxa}
\alias{getVariable}
\alias{import_qiime_sampleData}
\alias{merge_species}
\alias{nspecies}
\alias{otuTable}
\alias{otuTable<-}
\alias{phyloseq-deprecated}
\alias{plot_richness_estimates}
\alias{plot_taxa_bar}
\alias{prune_species}
\alias{rank.names}
\alias{sam_data}
\alias{sam_data<-}
\alias{samData}
\alias{sample.names}
\alias{sample.variables}
\alias{sampleData}
\alias{sampleData<-}
\alias{sampleNames}
\alias{sampleSums}
\alias{show_mothur_list_cutoffs}
\alias{species.names}
\alias{speciesarerows}
\alias{speciesAreRows}
\alias{speciesAreRows<-}
\alias{speciesSums}
\alias{subset_species}
\alias{taxaplot}
\alias{taxglom}
\alias{taxtab}
\alias{taxTab}
\alias{taxTab<-}
\alias{tipglom}
\alias{tre}
\alias{tre<-}
\title{Depcrecated functions in the phyloseq package.}
\usage{
  deprecated_phyloseq_function(x, value, ...)
}
\arguments{
  \item{x}{For assignment operators, the object that will
  undergo a replacement (object inside parenthesis).}

  \item{value}{For assignment operators, the value to
  replace with (the right side of the assignment).}

  \item{...}{For functions other than assignment operators,
  parameters to be passed to the modern version of the
  function (see table).}
}
\description{
  These will be migrated to \code{"defunct"} status in the
  next release, and removed completely in the release after
  that. These functions are provided for compatibility with
  older version of the phyloseq package.  They may
  eventually be completely removed.
}
\details{
  \tabular{rl}{ \code{plot_taxa_bar} \tab now a synonym for
  \code{\link{plot_bar}}\cr \code{taxaplot} \tab now a
  synonym for \code{\link{plot_bar}}\cr \code{taxtab} \tab
  now a synonym for \code{\link{tax_table}}\cr
  \code{taxTab} \tab now a synonym for
  \code{\link{tax_table}}\cr \code{sampleData} \tab now a
  synonym for \code{\link{sample_data}}\cr \code{samData}
  \tab now a synonym for \code{\link{sample_data}}\cr
  \code{sam_data} \tab now a synonym for
  \code{\link{sample_data}}\cr \code{speciesSums} \tab now
  a synonym for \code{\link{taxa_sums}}\cr
  \code{sampleSums} \tab now a synonym for
  \code{\link{sample_sums}}\cr \code{nspecies} \tab now a
  synonym for \code{\link{ntaxa}}\cr \code{species.names}
  \tab now a synonym for \code{\link{taxa_names}}\cr
  \code{sampleNames} \tab now a synonym for
  \code{\link{sample_names}}\cr \code{sample.names} \tab
  now a synonym for \code{\link{sample_names}}\cr
  \code{getSamples} \tab now a synonym for
  \code{\link{get_sample}}\cr \code{getSpecies} \tab now a
  synonym for \code{\link{get_taxa}}\cr \code{rank.names}
  \tab now a synonym for \code{\link{rank_names}}\cr
  \code{getTaxa} \tab now a synonym for
  \code{\link{get_taxa_unique}}\cr \code{sample.variables}
  \tab now a synonym for \code{\link{sample_variables}}\cr
  \code{getVariable} \tab now a synonym for
  \code{\link{get_variable}}\cr \code{merge_species} \tab
  now a synonym for \code{\link{merge_taxa}}\cr
  \code{otuTable} \tab now a synonym for
  \code{\link{otu_table}}\cr \code{speciesarerows} \tab now
  a synonym for \code{\link{taxa_are_rows}}\cr
  \code{speciesAreRows} \tab now a synonym for
  \code{\link{taxa_are_rows}}\cr
  \code{plot_richness_estimates} \tab now a synonym for
  \code{\link{plot_richness}}\cr
  \code{import_qiime_sampleData} \tab now a synonym for
  \code{\link{import_qiime_sample_data}}\cr
  \code{filterfunSample} \tab now a synonym for
  \code{\link{filterfun_sample}}\cr \code{genefilterSample}
  \tab now a synonym for \code{\link{genefilter_sample}}\cr
  \code{prune_species} \tab now a synonym for
  \code{\link{prune_taxa}}\cr \code{subset_species} \tab
  now a synonym for \code{\link{subset_taxa}}\cr
  \code{tipglom} \tab now a synonym for
  \code{\link{tip_glom}}\cr \code{taxglom} \tab now a
  synonym for \code{\link{tax_glom}}\cr \code{tre} \tab now
  a synonym for \code{\link{phy_tree}}\cr
  \code{show_mothur_list_cutoffs} \tab now a synonym for
  \code{\link{show_mothur_cutoffs}}\cr \code{sam_data<-}
  \tab now a synonym for \code{\link{sample_data<-}}\cr
  \code{sampleData<-} \tab now a synonym for
  \code{\link{sample_data<-}}\cr \code{tre<-} \tab now a
  synonym for \code{\link{phy_tree<-}}\cr
  \code{speciesAreRows<-} \tab now a synonym for
  \code{\link{taxa_are_rows<-}}\cr \code{otuTable<-} \tab
  now a synonym for \code{\link{otu_table<-}}\cr
  \code{taxTab<-} \tab now a synonym for
  \code{\link{tax_table<-}}\cr }
}

