FROM python:3.8
FROM pln-unison

RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
RUN jupyter contrib nbextension install
RUN jupyter nbextension enable codefolding/main

WORKDIR /root
COPY ./notebooks /notebooks
COPY ./data /data
