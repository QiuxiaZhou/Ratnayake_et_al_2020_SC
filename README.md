# Single cell analyses in [Ratnayake et al (2020)](https://www.biorxiv.org/content/10.1101/2020.08.24.262428v1.abstract).
Code describing the analyses of the single cell dataset included in [Ratnayake et al (2020)](https://www.biorxiv.org/content/10.1101/2020.08.24.262428v1.abstract). There are two main code files, one describing preprocessing and QC, normalisation, dimensional reduction, clustering and cluster markers identification,  using `Seurat`<sup>1, 2</sup> (`SC_RNA_seq.Rmd`) and a second one, describing a trajectory analysis using `PAGA`<sup>3</sup> (`Trajectory_Analysis.ipynb`) within the `Scanpy`<sup>4</sup> analytical toolkit. 

Both [`SC_RNA_seq.Rmd`](http://htmlpreview.github.io/?https://github.com/fjrossello/Ratnayake_et_al_2020_SC/blob/master/SC_RNA_seq.html) and [`Trajectory_Analysis.ipynb`](http://htmlpreview.github.io/?https://github.com/fjrossello/Ratnayake_et_al_2020_SC/blob/master/Trajectory_Analysis.html) code files have been compiled into `htmls` for easy visualization and sharing.

## References
1. Stuart, T., Butler, A., Hoffman, P., Hafemeister, C., Papalexi, E., Mauck, W. M., … Satija, R. (2019). Comprehensive Integration of Single-Cell Data. Cell. https://doi.org/10.1016/j.cell.2019.05.031
2. Butler, A., Hoffman, P., Smibert, P. et al. Integrating single-cell transcriptomic data across different conditions, technologies, and species. Nat Biotechnol 36, 411–420 (2018). https://doi.org/10.1038/nbt.4096
3. Wolf, F.A., Hamey, F.K., Plass, M. et al. PAGA: graph abstraction reconciles clustering with trajectory inference through a topology preserving map of single cells. Genome Biol 20, 59 (2019). https://doi.org/10.1186/s13059-019-1663-x.
4. Wolf, F., Angerer, P. & Theis, F. SCANPY: large-scale single-cell gene expression data analysis. Genome Biol 19, 15 (2018). https://doi.org/10.1186/s13059-017-1382-0.

