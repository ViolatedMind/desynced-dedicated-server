## Summary
This is dockerized version of [Desynced](https://store.steampowered.com/app/1450900/Desynced/) dedicated server. You can find the built image [here](https://hub.docker.com/r/violatedmind/desynced-server).

## Explanation
While the server is console application it is yet to create a tray window - thats why I have used xvfb to simulate xserver and wine over wineconsole.

## Configuration
These are the session_settings and game_settings for the server.

| Env variable             | Default                    | Values                       | Meaning                                                                    |
|--------------------------|----------------------------|------------------------------|----------------------------------------------------------------------------|
| INSTALL_PATH             | /desynced/server           | <path>                       | Where server files will be downloaded within Docker container              |
| WORLD_NAME               | World1                     | <string>                     | Name you want for the save file                                            |
| SERVER_NAME              | My Server                  | <string>                     | Name you want for the server                                               |
| PASSWORD                 | secret                     | <string>                     | Password for the server                                                    |
| MAX_PLAYERS              | 10                         | 1 - 16                       | Max simultaneous players on server                                         |
| VISIBILITY               | private                    | public, private              | Is your server visible in ingame server list                               |
| MODE                     | Shared/Coop                | Shared/Coop, Separate/Versus | Sets the game mode for the server                                          |
| ALLOW_FACTION_SWITCHING  | true                       | true, false                  | Allow factrion switching                                                   |
| BLOCK_UNLOCKED_BEHAVIORS | false                      | true, false                  | Blocks if people can copy in programing                                    |
| RUN_WITHOUT_PLAYERS      | false                      | true, false                  | Continue game if no one is on the server                                   |
| DISABLE_CLIENT_SAVE      | false                      | true, false                  | Stop players from locally saving the game                                  |
| SEED                     | 123                        | xxxxxx                       | Sets the seed use for map generation                                       |
| ELEVATION_FREQ           | 0.8                        | 0.2 - 1.5                    | Biome density                                                              |
| ELEVATION_SCALE          | 1                          | 0.2 - 1.5                    | Water/plateau density                                                      |
| BLIGHT_THRESHOLD         | 0.2                        | 0.01 - 0.2                   | Blight Corruption (smaller is more)                                        |
| PLATEAU_LEVEL            | 0.15                       | 0.01 - 0.2                   | Plateau amount (smaller is more)                                           |
| LANDSCAPE                | normal                     | normal, flat                 | Landscape type                                                             |
| RESOURCE_AMT             | 2                          | 1 - 4                        | Amount of resources that spawn                                             |
| RESOURCE_INF             | false                      | true, false                  | Unlimited resources                                                        |
| DAY_NIGHT                | true                       | true,false                   | Day night cycle                                                            |
| DAY_PERIOD               | 1000                       | 500 - 1000                   | Day length                                                                 |
| YEAR_PERIOD              | 20                         | 0 - 50                       | Year length                                                                |
| PEACEFUL_MODE            | 2                          | 0 - 4                        | Hostility level (0-None, 1-Passive, 2-Aggressive, 3-Swarm)                 |
| DIFFICULTY               | 1                          | 0.2 - 4                      | Game difficulty                                                            |
| CREEP                    | true                       | true, false                  | Enable bug hive evolution                                                  |
| DISABLE_MINIGAMES        | false                      | true, false                  | Disable minigames                                                          |
