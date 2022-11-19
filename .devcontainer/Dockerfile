
ARG VARIANT="ubuntu20.04" 
ARG CUDA_VERSION="11.8.0"
FROM nvidia/cuda:${CUDA_VERSION}-devel-${VARIANT}

RUN apt-get update
RUN apt install -y python3-pip

COPY requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt
RUN rm -rf /tmp/pip-tmp

RUN apt-get install -y tensorrt
RUN apt-get install -y python3-libnvinfer-dev
RUN apt-get install -y uff-converter-tf
