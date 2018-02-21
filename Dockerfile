# Environment: Jupyter 1.0.0 with IPython 5.0.0 kernel on CentOS7
FROM centos:7
RUN yum install -y epel-release
RUN yum install -y \
      gcc \
      python-devel \
      python-pip
RUN pip install ipython==5.0.0 jupyter==1.0.0 pandas==0.22.0 matplotlib==2.1.2
