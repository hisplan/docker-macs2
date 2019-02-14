FROM python:2.7

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)" \
      source.macs="https://pypi.org/project/MACS2/"

ENV MACS2_VERSION=2.1.2.1
ENV NAME MACS2

RUN pip install --trusted-host pypi.python.org numpy \
    && pip install --trusted-host pypi.python.org MACS2==${MACS2_VERSION}

ENTRYPOINT ["macs2"]
CMD ["-h"]
