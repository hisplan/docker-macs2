FROM python:3.7

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)" \
      version.macs="2.2.6" \
      source.macs="https://pypi.org/project/MACS2/2.2.6/"

ENV MACS2_VERSION=2.2.6
ENV NAME MACS2

RUN pip install --trusted-host pypi.python.org numpy==1.18.1 \
    && pip install --trusted-host pypi.python.org MACS2==${MACS2_VERSION}

ENTRYPOINT ["macs2"]
CMD ["-h"]
