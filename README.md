Rack vs Rails vs Nginx vs Puma
==============================

### What is Rack?
Credits: https://thoughtbot.com/upcase/videos/rack

Schedule:

1. simple
1. middleware
1. rackup


### App Servers
Different app servers

1. Webrick - Thread pool
1. Thin - Event machine
1. Puma - Worker pool + thread pool

Various types:

* Thread pool: https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Thread_pool.svg/580px-Thread_pool.svg.png
* Worker pool
* Event Machine
* Any combination of the above


### What is nginx?

1. Want beerland.example and coffeeland.example on the same machine
1. Try running two app servers on the same port, doesn't work
   * Could put on different ports, but a bad experience
   * Could have multiple IPs on the same machine, could get complicated
1. Use nginx as an app server
1. Multiple hosts bound to a single ip/port
1. Nice features like gzip, static asset hosting
