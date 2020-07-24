docker run -d \
  --name watchtower \
  -e TZ="Australia/Brisbane" \
  -e WATCHTOWER_CLEANUP=true \
  -e WATCHTOWER_DEBUG=true \
  -e WATCHTOWER_SCHEDULE=0 0 0 * * * \
  -v //var/run/docker.sock:/var/run/docker.sock \
  containrrr/watchtower test --debug