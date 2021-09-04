FROM ubuntu:18.04
ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"
RUN apt-get update

RUN apt-get install -y wget && rm -rf /var/lib/apt/lists/*
# RUN apt-get install -y vim
# RUN apt-get install -y tree

RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh \
RUN conda  version
RUN pip install notebook -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install jupyterlab -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install pandas -i https://pypi.tuna.tsinghua.edu.cn/simple