FROM ubuntu:15.10

MAINTAINER Sylvain Bellemare <sbellem@gmail.com>

RUN apt-get update && apt-get install -y texlive texlive-latex-extra
RUN apt-get install -y pandoc
RUN apt-get install -y context

RUN apt-get install -y build-essential python-dev python-pip
RUN pip install sphinx hieroglyph

VOLUME /docs
WORKDIR /docs
