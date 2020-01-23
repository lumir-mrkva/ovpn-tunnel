destination=${1:-$DESTINATION}
echo tunneling $destination to port 4000
mkdir /dev/net
mknod /dev/net/tun c 10 200
openvpn --config config &
socat tcp-listen:4000,fork tcp:$destination