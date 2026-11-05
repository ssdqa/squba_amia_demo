FROM pcornetqf/qf-r-base-rstudio:latest

RUN R -e "install.packages('remotes')"
RUN R -e "library(remotes); remotes::install_github('ssdqa/squba', dependencies='hard', force=TRUE, quiet=TRUE)"

# Port for RStudio execution
EXPOSE 8787

# Default password for RStudio
ENV PASSWORD=amia2026

# Needed for RStudio user to have access to external mounts
ENV ROOT=TRUE

# ADD --unpack https://github.com/ssdqa/amia_squba_2026/blob/main/squba_example_results.tar.gz /home/rstudio/amia_squba_sampledata
ADD --unpack ./squba_example_results.tar.gz /home/rstudio/amia_squba_sampledata

CMD ["/init"]