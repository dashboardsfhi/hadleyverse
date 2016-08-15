FROM rocker/hadleyverse
MAINTAINER "Carl Boettiger and Dirk Eddelbuettel" rocker-maintainers@eddelbuettel.com

RUN R -e "install.packages(c('ggrepel','lme4','arm','doRedis'))"
# deSolve

RUN R -e "devtools::install_github('raubreywhite/RAWmisc')"
RUN apt-get update \
  && apt-get install -y sshpass
