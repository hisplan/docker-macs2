FROM python:2.7

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)"

WORKDIR /

RUN pip install --trusted-host pypi.python.org numpy \
    && pip install --trusted-host pypi.python.org MACS2

ENV NAME MACS2

ENTRYPOINT ["macs2"]
CMD ["-h"]
