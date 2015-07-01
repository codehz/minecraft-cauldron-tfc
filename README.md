# Minecraft TerraFirmaCraft on Cauldron

These are docker images for Minecraft TerraFirmaCraft running on an
[Minecraft Cauldron container](https://registry.hub.docker.com/u/webhippie/minecraft-cauldron/).


## Usage

```
docker run --name minecraft-tfc-data busybox true
docker run -d -p 25565:25565 -p 8123:8123 \
  --volumes-from minecraft-tfc-data \
  --name minecraft-tfc \
  webhippie/minecraft-cauldron-tfc:latest

# Execute this for further available commands
docker exec -ti minecraft-tfc manage help
```


## Mods

* Both
  * [Aroma1997 Core 1.0.2.9](http://www.minecraftforum.net/forums/mapping-and-modding/minecraft-mods/1287828)
  * [Aroma Backup 0.0.0.5](http://www.minecraftforum.net/forums/mapping-and-modding/minecraft-mods/1287828)
  * [CodeChickenCore 1.0.4.35](http://www.minecraftforum.net/forums/mapping-and-modding/minecraft-mods/1279956)
  * [FastCraft 1.19](http://forum.industrial-craft.net/index.php?page=Thread&threadID=10820)
  * [NotEnoughItems 1.0.4.83](http://www.minecraftforum.net/forums/mapping-and-modding/minecraft-mods/1279956)
  * [TerraFirmaCraft 0.79.15.538](http://terrafirmacraft.com/)
  * [TerraFirmaCraft NEI Plugin 1.3.0.16](http://terrafirmacraft.com/f/topic/6733-171079v11)
  * [Waila 1.5.8a](http://www.minecraftforum.net/forums/mapping-and-modding/minecraft-mods/1289765)
* Client
  * [VoxelMap 1.5.13](http://www.curse.com/mc-mods/minecraft/225179-voxelmap)


## Versions

* [latest](https://github.com/dockhippie/minecraft-cauldron-tfc/tree/master)
  available as ```webhippie/minecraft-cauldron-tfc:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-cauldron-tfc/)
* [1.0.0](https://github.com/dockhippie/minecraft-cauldron-tfc/tree/master)
  available as ```webhippie/minecraft-cauldron-tfc:1.0.0``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-cauldron-tfc/)


## Available environment variables

```bash
ENV SERVER_MAXHEAP 2048M
ENV SERVER_MINHEAP 512M
ENV SERVER_MAXPERM 128M
ENV SERVER_OPTS nogui
ENV SERVER_MOTD Minecraft
ENV SERVER_RCONPWD webhippie
ENV SERVER_DYNMAP true
```


## Available management commands

```bash
Usage: manage <command> [<args>]

Some useful manage commands are:
   commands          List all available sub commands
   console           Start interactive console
   deop              Deop a specific player
   op                Op a specific player
   save-all          Save the current world state
   save-off          Disable the autosave feature
   save-on           Enable the autosave feature
   say               Say something on the server
   weather-clear     Set the weather to clear
   weather-rain      Set the weather to rain
   weather-thunder   Set the weather to thunder
   whitelist-add     Add player to whitelist
   whitelist-list    Whitelist on the server
   whitelist-off     Disable the whitelist
   whitelist-on      Enable the whitelist
   whitelist-reload  Reload the whitelist
   whitelist-remove  Remove player from whitelist
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
