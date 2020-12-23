docker push -a hsz1273327/dragonfly-client
docker manifest create hsz1273327/dragonfly-client:1.0.6 hsz1273327/dragonfly-client:armv7-1.0.6 hsz1273327/dragonfly-client:arm64-1.0.6 hsz1273327/dragonfly-client:amd64-1.0.6
docker manifest create hsz1273327/dragonfly-client:latest hsz1273327/dragonfly-client:armv7-latest hsz1273327/dragonfly-client:arm64-latest hsz1273327/dragonfly-client:amd64-latest
