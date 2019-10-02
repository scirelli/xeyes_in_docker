# Running gui app from Docker

## Install
```
brew install socat
brew cask reinstall xquartz
```
Close any programs running on port `6000`
```
lsof -i TCP:6000
```
Open a socket on that port and keep the terminal open
```
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```
Verify open port
```
lsof -i TCP:6000
```
Run the docker container
```
docker run -e DISPLAY=docker.for.mac.host.internal:0 gui-app
```
## References
* https://stackoverflow.com/questions/37826094/xt-error-cant-open-display-if-using-default-display
    * https://stackoverflow.com/a/53548183/808603
* https://medium.com/@SaravSun/running-gui-applications-inside-docker-containers-83d65c0db110
* https://seanthegeek.net/234/graphical-linux-applications-bash-ubuntu-windows/
* https://vsupalov.com/docker-env-vars/
