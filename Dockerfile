FROM webhippie/minecraft-cauldron:1.1207.01
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/minecraft"]

ADD rootfs /
EXPOSE 25565 25575 8123

WORKDIR /minecraft
CMD ["/bin/s6-svscan","/etc/s6"]
