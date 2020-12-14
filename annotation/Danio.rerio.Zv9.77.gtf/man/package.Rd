\name{Danio.rerio.Zv9.77.gtf}
\docType{package}

\alias{Danio.rerio.Zv9.77.gtf-package}
\alias{Danio.rerio.Zv9.77.gtf}
\alias{Danio.rerio.Zv9.77.gtf}


\title{Annotation package for TxDb object(s)}

\description{  
  This package loads one or more TxDb objects.  Such TxDb
  objects are an R interface to prefabricated databases contained by
  this package.

  The names of any objects exposed by this package indicate the origin and
  resources exposed.  So for example TxDb.Hsapiens.UCSC.hg19.knownGene
  would be a TxDb object, of Homo sapiens data from UCSC build
  hg19 based on the knownGene Track.
}

\note{
  This data package was made from resources at Ensembl on
  2020-12-14 10:21:51 +0000 (Mon, 14 Dec 2020) and based on the 0.77
}

\author{Fernando J Rossello <frossello@unimelb.edu.au> [aut, cre]}


\seealso{
  \link[GenomicFeatures]{transcripts},
  \link[GenomicFeatures]{transcriptsBy}
}

\examples{
## load the library
library(Danio.rerio.Zv9.77.gtf)
## list the contents that are loaded into memory
ls('package:Danio.rerio.Zv9.77.gtf')
## show the db object that is loaded by calling it's name
Danio.rerio.Zv9.77.gtf

}

\keyword{package}
\keyword{data}
