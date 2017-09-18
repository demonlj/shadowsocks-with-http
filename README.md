shadowsocks with http
---
### Introduction

1. shadowsocks service in 1080 [socks] and 1087 [http]
2. alpine based.
3. 11M only.

### Install

1. Make sure ```docker``` installed already.

2. Pull image from [demonlj/shadowsocks-with-http](https://hub.docker.com/r/demonlj/shadowsocks-with-http/) 

   > docker pull demonlj/shadowsocks-with-http

3. Create container

   ```shell
   sudo docker run -d —name [CONTAINER_NAME] \
   				-e SERVER_IP=[YOUR_SERVER_IP] \
   				-e SERVER_PORT=[YOUR_SERVER_PORT] \
   				-e PASSWORD=[YOUR_PASSWORD] \
   				-e METHOD=[YOUR_METHOD] \
   				-p 1080:1080 -p 1087:1087 demonlj/shadowsocks-with-http
   ```

4. Set proxy to  `127.0.0.1:1080` for **socks** mode or `127.0.0.1:1087` for **HTTP** mode


### Build from source:  

```shell
git clone https://github.com/demonlj/shadowsocks-with-http.git
cd shadowsocks-with-http
sudo docker build -f Dockerfile -t demonlj/shadowsocks-with-http .
```

