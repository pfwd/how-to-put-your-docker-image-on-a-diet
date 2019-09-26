# How To Put Your Docker Image On A Diet
A talk by [Peter Fisher](http://peterfisher.me.uk/event/how-to-put-your-docker-image-diet/)

The application is a very simple Symfony 4.3.4 web app.

Each tag demonstrates how to reduce the file size of the Docker image which is being built.

The talk was first given at PHP South Wales

## Docker image sizes

| Version | Size                        |
|---------|-----------------------------|
| 1.0.0   | 1.0.9 GB                    |
| 1.1.0   | 1.0.6 GB                    |
| 1.2.0   | 708 MB                      |
| 1.3.0   | 449 MB                      |
| 1.4.0   | 601 MB                      |
| 1.5.0   | 485 MB                      |
| 1.6.0   | 478 MB                      |
| 1.7.0   | 444 MB                      |
| 1.8.0   | 424 MB                      |
| 1.9.0   | 171 MB  |

---

---

- [View Slides](http://peterfisher.me.uk)
- [Joind.in](http://peterfisher.me.uk)
- [Subscribe to HowToCodeWell YouTube channel](http://bit.ly/2wf9ufB)


- [Install](#install)
  -  [Git](#git)
  -  [Docker](#docker)
- [Uninstall](#uninstall)


## Installation

You will need:
- git
- Docker machine
- Docker compose
- Docker

### Git

Clone the repo

```
$ git clone git@github.com:pfwd/how-to-put-your-docker-image-on-a-diet.git
```

### Docker

Create a Docker machine (Optional)

```
$ docker-machine create how-to-put-your-docker-image-on-a-diet
$ docker-machine env how-to-put-your-docker-image-on-a-diet
$ eval $(docker-machine env how-to-put-your-docker-image-on-a-diet)
```

Building the images and containers via Docker compose
```
$ docker-compose up -d --build  
```

Check the status of the containers and the images
```
$ docker ps -a
$ docker images 
```
Each web server can be accessed on a browser via their port number.  You can find this by running `$ docker ps`
EG:
```
$ docker-machine ip how-to-put-your-docker-image-on-a-diet
192.168.99.114
```
```
$ open http://192.168.99.114:8100 # Version 1.0.0
$ open http://192.168.99.114:8110 # Version 1.1.0
$ open http://192.168.99.114:8120 # Version 1.2.0
$ open http://192.168.99.114:8130 # Version 1.3.0
$ open http://192.168.99.114:8140 # Version 1.4.0
$ open http://192.168.99.114:8150 # Version 1.5.0
$ open http://192.168.99.114:8160 # Version 1.6.0
$ open http://192.168.99.114:8171 # Version 1.7.0
$ open http://192.168.99.114:8181 # Version 1.8.0 (Development target)
$ open http://192.168.99.114:8182 # Version 1.8.0 (Staging target)
$ open http://192.168.99.114:8190 # Version 1.9.0
```
# Uninstall
```
$ docker-machine rm how-to-put-your-docker-image-on-a-diet
```