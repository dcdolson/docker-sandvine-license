This is a docker container to run Sandvine's license server.

It mounts the licenses from /var/sandvine/license on the host,
and exposes port 6200. Place your *.lic files in the /var/sandivne/license

docker build --rm -t sandvine-license  .

docker run -d -p 0.0.0.0:6200:6200 --name="sandvine-license" -v /var/sandvine/license:/var/sandvine/license sandvine-license
