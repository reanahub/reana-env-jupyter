# Environment: Jupyter 1.1.1 on Ubuntu 24.04
FROM docker.io/library/ubuntu:24.04

# Set system locale
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Install system dependencies
# hadolint ignore=DL3008
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  gcc \
  python3 \
  python3-dev \
  python3-pip && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# hadolint ignore=DL3013
RUN pip install --no-cache-dir --break-system-packages \
  ipykernel==6.29.5 \
  ipython==8.31.0 \
  jupyter-client==8.6.3 \
  jupyter-console==6.6.3 \
  jupyter-core==5.7.2 \
  jupyter==1.1.1 \
  matplotlib==3.10.0 \
  nbconvert==7.16.5 \
  pandas==2.2.3 \
  papermill==2.6.0
