FROM webhippie/minecraft-cauldron:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN mkdir -p /minecraft/template
ADD template /minecraft/template

VOLUME ["/minecraft/merge", "/minecraft/world", "/minecraft/logs"]

EXPOSE 25565 25575

WORKDIR /minecraft
ENTRYPOINT ["manage"]
CMD ["bash"]
