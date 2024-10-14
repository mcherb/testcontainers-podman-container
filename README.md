# **Outside the container**

`docker build -t podman-test .`.  
`docker run --security-opt seccomp=unconfined --security-opt label=disable --device /dev/fuse -it --rm --user podman podman-test:latest`

# **Inside the container** 

`cd /app`

related to this SO : https://stackoverflow.com/a/77685096/8325761      

`podman system service --time=0 unix:///tmp/podman.sock &`

`./gradlew -i test`
