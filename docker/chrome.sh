docker run --rm -it \
    --net docker_dev \
    --cpuset-cpus 0 \
    --memory 512mb \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $HOME/Downloads:/root/Downloads \
    -v $HOME/.config/google-chrome/:/data \
    --device /dev/snd \
    --name chrome \
    jess/chrome google-chrome --no-sandbox --user-data-dir=/tmp/chrome
