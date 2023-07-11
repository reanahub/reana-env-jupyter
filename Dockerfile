# Environment: Jupyter 1.0.0 with IPython 5.0.0 kernel on CentOS7
FROM docker.io/library/centos:7

# Set system locale
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8

# hadolint ignore=DL3033
RUN yum install -y epel-release && yum clean all

# hadolint ignore=DL3033
RUN yum install -y \
      gcc \
      python3-devel \
      python3-pip \
      && yum clean all

# hadolint ignore=DL3013
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir \
      ipython==7.16.1 \
      jupyter==1.0.0 \
      jupyter-client==6.1.12 \
      jupyter-console==6.4.0 \
      jupyter-core==4.7.1 \
      matplotlib==3.3.4 \
      nbconvert==6.0.7 \
      pandas==1.1.5 \
      papermill==2.3.3 \
      # FIXME: Pin black to be able to create the cache folders manually and avoid errors.
      # Related issue: https://github.com/nteract/papermill/issues/498
      black==21.7b0 \
      ipykernel==5.5.5

# FIXME: Create `black` cache folder manually
# hadolint ignore=SC2174
RUN mkdir -m 770 -p /.cache/black/21.7b0/
