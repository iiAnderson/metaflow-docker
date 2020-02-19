FROM continuumio/miniconda3 as base
MAINTAINER iiAnderson

RUN apt-get update && \
    apt-get install -y software-properties-common vim curl

RUN mkdir -p /var/metaflow/src

ADD src /var/metaflow/src

RUN pip install -r /var/metaflow/src/requirements.txt

ENV METAFLOW_USER=metaflow-user
ENV METAFLOW_HOME=/var/metaflow/src

RUN conda config --env --add channels conda-forge

CMD [ "python", "/var/metaflow/src/metaflow.py"]