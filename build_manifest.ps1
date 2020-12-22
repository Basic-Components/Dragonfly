docker push -a hsz1273327/dragonfly-client
docker manifest create hsz1273327/dragonfly-client:1.0.6 hsz1273327/dragonfly-client:armv6-1.0.6 hsz1273327/dragonfly-client:armv7-1.0.6 hsz1273327/dragonfly-client:arm64-1.0.6 hsz1273327/dragonfly-client:amd64-1.0.6
docker manifest create hsz1273327/dragonfly-client:latest hsz1273327/dragonfly-client:armv6-latest hsz1273327/dragonfly-client:armv7-latest hsz1273327/dragonfly-client:arm64-latest hsz1273327/dragonfly-client:amd64-latest

docker push -a hsz1273327/dragonfly-supernode
docker manifest create hsz1273327/dragonfly-supernode:1.0.6 hsz1273327/dragonfly-supernode:armv6-1.0.6 hsz1273327/dragonfly-supernode:armv7-1.0.6 hsz1273327/dragonfly-supernode:arm64-1.0.6 hsz1273327/dragonfly-supernode:amd64-1.0.6
docker manifest create hsz1273327/dragonfly-supernode:latest hsz1273327/dragonfly-supernode:armv6-latest hsz1273327/dragonfly-supernode:armv7-latest hsz1273327/dragonfly-supernode:arm64-latest hsz1273327/dragonfly-supernode:amd64-latest
