Maven Image
=================

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/chinayin-docker/maven/Docker%20Image%20CI)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/chinayin/maven?sort=semver)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/chinayin/maven?sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/chinayin/maven)

Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.

### Supported tags and respective `Dockerfile` links

![](https://img.shields.io/docker/v/chinayin/maven/3.8-jdk-8-buster-slim)
![](https://img.shields.io/docker/v/chinayin/maven/3.8-jdk-11-buster-slim)
![](https://img.shields.io/docker/v/chinayin/maven/3.8-jdk-16-buster-slim)

### Image Variants

- `maven:<version>`

### Usage

You can use the image directly, e.g.

```
docker run --rm -it chinayin/maven:3-jdk-8-buster-slim
```

The images are built daily and have the security release enabled, so will contain any security updates released more
than 24 hours ago.

You can also use the images as a base for your own Dockerfile:

```
FROM chinayin/maven:3-jdk-8-buster-slim
```
