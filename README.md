## Summary
This is dockerized version of [Desynced](https://store.steampowered.com/app/1450900/Desynced/) dedicated server. You can find built images [here](https://hub.docker.com/r/renair/desynced).

## Explanation
While server is console application it yet creates tray window - thats why I've used xvfb to simulate xserver and wine over wineconsole.

## Configuration

| Env variable        | Default                    | Values                    | Meaning                                                                    |
|---------------------|----------------------------|---------------------------|----------------------------------------------------------------------------|
| INSTALL_PATH        | /desynced/server           | <path>                    | Where server files will be downloaded within Docker container              |
| WORLD_NAME          | World1                     | <string>                  | Savefile name                                                              |
| SERVER_NAME         | Desynced Dockerized server | <string>                  | Ingame server name. Must not contain ticks - it will fail to start with it |
| MAX_PLAYERS         | 10                         | 1 - 10                    | Max simultaneous players on server                                         |
| VISIBILITY          | private                    | public, private           | Is your server visible in ingame server list                               |
| RUN_WITHOUT_PLAYERS | false                      | true, false               | Wheater continue simulation without players or not                         |
| RESOURCE_RICHNESS   | 4                          | 1 - 4                     |                                                                            |
| BLIGHT_THRESHOLD    | 0.1                        | 0.01 - 0.2                |                                                                            |
| PLATEAU_LEVEL       | 0.1                        | 0.01 - 0.2                |                                                                            |
| PEACEFUL_MODE       | 2                          | 1 - no bugs 2 - some bugs |                                                                            |