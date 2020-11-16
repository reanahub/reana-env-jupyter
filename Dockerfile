# Environment: Jupyter 1.0.0 with IPython 5.0.0 kernel on CentOS7
FROM centos:7

# hadolint ignore=DL3033
RUN yum install -y epel-release && yum clean all

# hadolint ignore=DL3033
RUN yum install -y \
      gcc \
      python-devel \
      python-pip \
      && yum clean all

# hadolint ignore=DL3013
RUN pip install --upgrade pip
RUN pip install \
      ipython==5.0.0 \
      jupyter==1.0.0 \
      jupyter-client==5.2.3 \
      jupyter-console==5.2.0 \
      jupyter-core==4.4.0 \
      matplotlib==2.1.2 \
      nbconvert==5.3.1 \
      pandas==0.22.0 \
      papermill==0.13.4 \
      ipykernel==4.8.2
