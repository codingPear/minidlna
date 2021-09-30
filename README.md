## MiniDLNA

MiniDLNA is a simple media server software, with the aim of being fully compliant with DLNA/UPnP-AV clients.

## MiniDLNA Docker Images

This image is based on Alpine Linux.
Build is setup for armv7, arm64, and amd64.

### Usage

    docker run -d --name minidlna \
      --net=host \
      -v <PATH_TO_MUSIC_DIR>:/opt/Music \
      -v <PATH_TO_VIDEOS_DIR>:/opt/Videos \
      -v <PATH_TO_PICTURES_DIR>:/opt/Pictures \
      codingpear/minidlna


# If you want to overwrite a config file

    docker run -d --name minidlna \
      --net=host \
      -v <PATH_TO_MUSIC_DIR>:/opt/Music1 \
      -v <PATH_TO_VIDEOS_DIR>:/opt/Videos1 \
      -v <PATH_TO_PICTURES_DIR>:/opt/Pictures1 \
      -v <PATH_TO_ANOTHER_MUSIC_DIR>:/opt/Music2 \
      -v <PATH_TO_ANOTHER_VIDEOS_DIR>:/opt/Videos2 \
      -v <PATH_TO_ANOTHER_PICTURES_DIR>:/opt/Pictures2 \
      -v <PATH_TO_CONFIG_DIR>/minidlna.conf:/etc/minidlna.conf \
      codingpear/minidlna
      
Before lauching, change minidlna.config file (around line 25)

        media_dir=V,/opt/Videos1
        media_dir=A,/opt/Music1
        media_dir=P,/opt/Pictures1
        media_dir=V,/opt/Videos2
        media_dir=A,/opt/Music2
        media_dir=P,/opt/Pictures2


