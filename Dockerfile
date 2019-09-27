FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/mixpack/mixpack/ /root/packages/mixpack/
WORKDIR /root/packages/mixpack
RUN pip3 install /root/packages/mixpack

CMD ["python3","test/mixpack.py"]


