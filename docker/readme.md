``` bash
docker-compose build \
    --build-arg http_proxy=http://proxy.exaple.com \
    --build-arg https_proxy=http://proxy.exaple.com
    ```

## mount gpu
    docker run -itd --gpus all --name 容器名 -e NVIDIA_DRIVER_CAPABILITIES=compute,utility -e NVIDIA_VISIBLE_DEVICES=all 镜像名

## display
xhost +