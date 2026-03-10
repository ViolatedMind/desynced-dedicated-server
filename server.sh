#! /bin/bash

# echo "----ENV----"
# echo "install_path = $INSTALL_PATH"
# echo "world_name = $WORLD_NAME"
# echo "-----------"

echo "Installing/updating server via SteamCMD..."

steamcmd \
  +@sSteamCmdForcePlatformType windows \
  +force_install_dir "$INSTALL_PATH" \
  +login anonymous \
  +app_update 2943070 validate \
  +quit

STEAM_EXIT=$?
if [[ $STEAM_EXIT -ne 0 ]]; then
  echo "ERROR: SteamCMD exited with code $STEAM_EXIT"
  exit 2
fi

SERVER_EXE="$INSTALL_PATH/Desynced/Binaries/Win64/DesyncedServer.exe"

if [[ ! -f "$SERVER_EXE" ]]; then
  echo "ERROR: Server executable not found: $SERVER_EXE"
  exit 3
fi

session_settings="{'name': '$SERVER_NAME', 'players':$MAX_PLAYERS, 'visibility': '$VISIBILITY', 'run_without_players': $RUN_WITHOUT_PLAYERS, 'mode': '$MODE', 'allow_faction_switch': $ALLOW_FACTION_SWITCHING, 'password': '$PASSWORD', 'block_unlocked_behaviors': $BLOCK_UNLOCKED_BEHAVIORS, 'disable_client_save': $DISABLE_CLIENT_SAVE}"
game_settings="{'seed': $SEED, 'elevation_prams_freq': $ELEVATION_FREQ, 'elevation_prams_scale': $ELEVATION_SCALE, 'landscape': '$LANDSCAPE', 'resource_amt': $RESOURCE_AMT, 'resource_inf': $RESOURCE_INF, 'enable_day_night': $DAY_NIGHT, 'day_period': $DAY_PERIOD, 'year_period': $YEAR_PERIOD, 'blight_threshold': $BLIGHT_THRESHOLD, 'difficulty': $DIFFICULTY, 'creep': $CREEP, 'disable_minigames': $DISABLE_MINIGAMES, 'plateau_level': $PLATEAU_LEVEL, 'peaceful': $PEACEFUL_MODE}"

xvfb-run -a \
  wine $INSTALL_PATH/Desynced/Binaries/Win64/DesyncedServer.exe \
  "$WORLD_NAME.desynced" \
  -SessionSettings="$session_settings" \
  -GameSettings="$game_settings"
