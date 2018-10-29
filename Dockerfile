FROM centos:centos7.2.1511
ADD build /buildbox
RUN bash /buildbox/install-devtools.sh
RUN bash /buildbox/build-openssl.sh
RUN bash /buildbox/build-python3.sh
RUN yum clean -y all && rm -rfv /tmp/* /buildbox
ENV PATH="/usr/local/python37/bin:${PATH}"