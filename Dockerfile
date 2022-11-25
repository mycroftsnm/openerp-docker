FROM debian:10-slim

WORKDIR .
ADD openerp-client_6.0.0~rc2-0_all.deb /
ADD python-hippocanvas_0.3.1-1.2build1_amd64.deb /
ADD libhippocanvas-1-0_0.3.1-1.2build1_amd64.deb /
RUN apt update
RUN apt install -y /libhippocanvas-1-0_0.3.1-1.2build1_amd64.deb
RUN apt install -y /python-hippocanvas_0.3.1-1.2build1_amd64.deb
RUN apt install -y /openerp-client_6.0.0~rc2-0_all.deb
RUN apt install -y python-lxml
RUN apt install -y liburi-encode-perl
RUN apt install -y libcanberra-gtk-module
RUN apt install -y libcanberra-gtk3-module
RUN apt install -y python-egenix-mxdatetime
RUN apt install -y python-egenix-mxtools
RUN apt install -y python-gtk2-dev
RUN apt install -y python-pip
RUN pip2 install matplotlib==1.5.3 --no-binary=matplotlib
RUN apt install dbus-x11
RUN useradd user -m -u 1000
CMD ["/usr/bin/openerp-client"]