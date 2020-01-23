# open vpn tunnel docker image

usage example: tunnels 10.0.0.10:777 from vpn to 4000 on host
```
docker run --rm -d -v ~/myvpnserverconnection.ovpn:/config \
  --cap-add=NET_ADMIN -p 4000:4000 lumir/ovpn-tunnel 10.0.0.10:777
```
