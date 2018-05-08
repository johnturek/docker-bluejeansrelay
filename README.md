
Blue Jeans Relay Listener
=========================

This docker image is for creating a listener for the Blue Jeans Relay Service:
https://relay.bluejeans.com/

Running
-------

```bash
docker run --env-file=.env --rm -it jvt/bluejeansrelay
```

Developing
----------

```bash
docker build --tag jvt/bluejeansrelay .
```

Example env file:
-----------------

```
LISTENER_SERVICE=xyz
AMQP_USERNAME=yourRelayUserName
AMQP_PLAINTEXT_PASSWORD=blahblahblah
```
