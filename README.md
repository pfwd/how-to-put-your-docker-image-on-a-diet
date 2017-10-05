# How To Put Your Docker Image On A Diet
A talk by [Peter Fisher]('http://peterfisher.me.uk/event/how-to-put-your-docker-image-diet/')

The application is a very simple Symfony 3.3.* web app.

Each tag demonstrates how to reduce the file size of the Docker image which is being built.

The images are also available on the [Docker Hub](https://hub.docker.com/r/howtocodewell/how-to-put-your-docker-image-on-a-diet/)


The talk was first given at PHP South West

---

This is tag **0.3.0**

Docker image file size: **314MB**

---

- [View Slides](http://peterfisher.me.uk)
- [Joind.in](http://peterfisher.me.uk)
- [Subscribe to HowToCodeWell YouTube channel](http://bit.ly/2wf9ufB)


- [Install](#install)
  -  [Git](#git)
  -  [Composer](#composer)
  -  [Docker](#docker)
- [Uninstall](#uninstall)


## Installation

You will need:
- git
- composer
- Docker

### Git

Clone the repo

```
$ git clone git@github.com:pfwd/how-to-put-your-docker-image-on-a-diet.git
```
### Composer

Update the website using composer

```
$ composer install -n -d site
```

### Docker

Create a Docker machine (Optional)

```
$ docker-machine create how-to-put-your-docker-image-on-a-diet
$ docker-machine env how-to-put-your-docker-image-on-a-diet
$ eval $(docker-machine env how-to-put-your-docker-image-on-a-diet)
```

Build 0.3.x of the application

```
$ docker build -t howtocodewell/how-to-put-your-docker-image-on-a-diet:0.3.0 .
```

OR

Pull the image from the Docker hub

```
$ docker pull howtocodewell/how-to-put-your-docker-image-on-a-diet:0.3.0
```


Run 0.3.x of the application

```
$ docker run --name apache2 -d -p 80:80 howtocodewell/how-to-put-your-docker-image-on-a-diet:0.3.0
```

Check the IP address of the Docker machine

```
$ docker-machine ip how-to-put-your-docker-image-on-a-diet
192.168.99.100
```

Enter the IP address into the browser. The application should be running

## Uninstall

The easiest way to remove everything is to remove the Docker machine

```
$ docker-machine rm how-to-put-your-docker-image-on-a-diet
```

Or remove just the container

```
$ docker rm -f apache2
```


Or remove the image

```
$ docker rmi -f howtocodewell/how-to-put-your-docker-image-on-a-diet:0.3.0
```