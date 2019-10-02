FROM ubuntu
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y x11-apps
CMD ["/usr/bin/xeyes"]
