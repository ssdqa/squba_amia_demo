# To build image:
# $ export GH_PAT=<your_github_pat>
# $ docker build --secret id=github_pat,env=GH_PAT .

FROM pcornetqf/qf-r-base-rstudio:latest

RUN --mount=type=secret,id=github_pat \
    GITHUB_PAT="$(cat /run/secrets/github_pat)" \
  R -e "install.packages('remotes')" \
  -e "library(remotes)" \
  -e "remotes::install_github('ssdqa/squba', dependencies='hard', force=TRUE, quiet=TRUE)"

# Port for RStudio execution
EXPOSE 8787

# Default password for RStudio
ENV PASSWORD=amia2026

# Needed for RStudio user to have access to external mounts
ENV ROOT=TRUE

ADD https://github.com/ssdqa/squba_amia_demo.git /home/rstudio/

CMD ["/init"]
