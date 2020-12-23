docker buildx build --load --platform=linux/arm/v7 -t hsz1273327/dragonfly-client:armv7-1.0.6 -t hsz1273327/dragonfly-client:armv7-latest .
docker buildx build --load --platform=linux/arm64 -t hsz1273327/dragonfly-client:arm64-1.0.6 -t hsz1273327/dragonfly-client:arm64-latest .
docker buildx build --load --platform=linux/amd64 -t hsz1273327/dragonfly-client:amd64-1.0.6 -t hsz1273327/dragonfly-client:amd64-latest .
