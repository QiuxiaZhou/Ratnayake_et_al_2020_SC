# Create an updated annotation file package as described here https://github.com/UofABioinformaticsHub/TxDb.Drerio.Ensembl.gtf88 
#and https://freesoft.dev/program/102927184
# created by Stephen M Pederson <stephen.pederson@adelaide.edu.au> @steveped. This code was licensed under cc by-sa 3.0
install.packages('magrittr')
install.packages('tibble')
BiocManager::install('AnnotationHub')
library(magrittr)
library(tibble)
library(GenomicFeatures)
library(AnnotationHub)
#Find the required gtf using AnnotationHub()
hub <- AnnotationHub()

ah <- AnnotationHub() %>%
  subset(species == "Danio rerio") %>%
  subset(rdataclass == "GRanges") %>%
  subset(dataprovider == "Ensembl")

mcols(ah) %>% as.data.frame() %>% filter(genome == "Zv9")

hubID <- "AH28799" # Danio_rerio.Zv9.77.gtf (Zv9 assembly)

gr <- ah[[hubID]]

txdb <- makeTxDbFromGRanges(gr, taxonomyId = 7955, metadata = md)

aut <- person(c("Fernando", "J"), "Rossello", email = "frossello@unimelb.edu.au", role = c("aut", "cre"))

md <- data.frame(value = c(`Data source` = "Ensembl", 
                           Organism = metadata(gr)$Organism,
                           `Taxonomy ID` = metadata(gr)$`Taxonomy ID`, 
                           `Resource URL` = metadata(gr)$`Data Source`, 
                           `Type of Gene ID` = "Ensembl")) %>%
  rownames_to_column("name")

makeTxDbPackage(txdb,
                version = "1.0.0", 
                destDir = "annotation/",
                maintainer = aut, 
                author = aut, 
                pkgname = "Danio.rerio.Zv9.77.gtf", 
                provider = "Ensembl",
                providerVersion = "0.77")

