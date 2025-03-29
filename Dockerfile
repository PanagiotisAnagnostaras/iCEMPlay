FROM python:3.6-slim

WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev \
    git \
    wget \
    curl \
    unzip \ 
    build-essential \
    libosmesa6-dev \
    libgl1-mesa-glx \
    libegl1-mesa \ 
    libffi-dev \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
    patchelf \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install pipenv

COPY . /workspace/

ENV SKLEARN_ALLOW_DEPRECATED_SKLEARN_PACKAGE_INSTALL=True
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/root/.mujoco/mujoco200/bin
RUN mkdir ~/mujoco && unzip /workspace/external/mujoco200_linux.zip -d ~/.mujoco && cp /workspace/mjkey.txt /root/.mujoco/mjkey.txt

CMD ["bash"]
