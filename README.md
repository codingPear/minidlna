## MiniDLNA

MiniDLNA is a simple media server software, with the aim of being fully compliant with DLNA/UPnP-AV clients.

## MiniDLNA Docker Images

This image is based on Alpine Linux.
Build is setup for armv7, arm64, and amd64.

### Usage

Example:

    docker run -d --name minidlna \
      --net=host \
      -v <PATH_TO_MUSIC_DIR>:/opt/Music \
      -v <PATH_TO_VIDEOS_DIR>:/opt/Videos \
      -v <PATH_TO_PICUTRES_DIR>:/opt/Pictures \
      codingpear/minidlna


If you want to overwrite a config file:

    docker run -d --name minidlna \
      --net=host \
      -v <PATH_TO_MUSIC_DIR>:/opt/Music \
      -v <PATH_TO_VIDEOS_DIR>:/opt/Videos \
      -v <PATH_TO_PICUTRES_DIR>:/opt/Pictures \
      -v <PATH_TO_CONFIG_DIR>/minidlna.conf:/etc/minidlna.conf \
      codingpear/minidlna
