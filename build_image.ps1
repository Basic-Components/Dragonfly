docker buildx build --load --build-arg GOPROXY="https://goproxy.io" --platform=linux/arm/v7 -t hsz1273327/dragonfly-client:armv7-1.0.6 -t hsz1273327/dragonfly-client:armv7-latest .
docker buildx build --load --build-arg GOPROXY="https://goproxy.io" --platform=linux/arm64 -t hsz1273327/dragonfly-client:arm64-1.0.6 -t hsz1273327/dragonfly-client:arm64-latest .
docker buildx build --load --build-arg GOPROXY="https://goproxy.io" --platform=linux/amd64 -t hsz1273327/dragonfly-client:amd64-1.0.6 -t hsz1273327/dragonfly-client:amd64-latest .

docker buildx build -f Dockerfile.supernode --build-arg GOPROXY="https://goproxy.io" --load --platform=linux/arm/v7 -t hsz1273327/dragonfly-supernode:armv7-1.0.6 -t hsz1273327/dragonfly-supernode:armv7-latest .
docker buildx build -f Dockerfile.supernode --build-arg GOPROXY="https://goproxy.io" --load --platform=linux/arm64 -t hsz1273327/dragonfly-supernode:arm64-1.0.6 -t hsz1273327/dragonfly-supernode:arm64-latest .
docker buildx build -f Dockerfile.supernode --build-arg GOPROXY="https://goproxy.io" --load --platform=linux/amd64 -t hsz1273327/dragonfly-supernode:amd64-1.0.6 -t hsz1273327/dragonfly-supernode:amd64-latest .
