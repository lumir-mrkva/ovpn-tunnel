FROM ubuntu

RUN apt-get update \
    && apt-get install -y openvpn socat

EXPOSE 4000

ADD run.sh .

ENTRYPOINT ["sh", "/run.sh"]