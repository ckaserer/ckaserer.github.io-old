---
layout: post
title:  "cookiecutter for container images"
description: "Standardize and automate your container image build process. From folder structure, to CICD, to publishing to a container registry, to build notifications via slack"
date:   2020-03-01
banner_preview: 2020_03_01_docker_cookiecutter/preview.png
banner_image: 2020_03_01_docker_cookiecutter/banner.png
category: docker
tags: [container, cookiecutter]
---

<a href="https://travis-ci.com/ckaserer/docker-cookiecutter">
    <img src="https://travis-ci.com/ckaserer/docker-cookiecutter.svg?branch=master" style="height: auto !important; width: auto !important; "/>
</a>
<img src="https://img.shields.io/badge/license-GPL%20v3.0-brightgreen.svg" style="height: auto !important; width: auto !important; "/>
<img src="https://img.shields.io/maintenance/yes/2020" style="height: auto !important; width: auto !important; "/>

## What is cookiecutter?!

Cookiecutter is a command-line utility that creates projects from **cookiecutters** (project templates), e.g. creating a Python package project from a Python package project template.

* Documentation: [https://cookiecutter.readthedocs.io](https://cookiecutter.readthedocs.io)
* GitHub: [https://github.com/cookiecutter/cookiecutter](https://github.com/cookiecutter/cookiecutter)
* PyPI: [https://pypi.python.org/pypi/cookiecutter](https://pypi.python.org/pypi/cookiecutter)
* Free and open source software: [BSD license](https://github.com/cookiecutter/cookiecutter/blob/master/LICENSE)

### Sidenote 

I maintain a containerized version of all cookiecutter releases starting with `1.7.0` at [dockerhub](https://hub.docker.com/r/ckaserer/cookiecutter).
If you want to know more check out the associated repository at [github.com/ckaserer/cookiecutter](https://github.com/ckaserer/cookiecutter) or my blog post [containerized cookiecutter](https://ckaserer.dev/docker/2020/02/15/cookiecutter.html).

---

## Cookiecutter for container images

The goal of today is to standardize and automate your container image build process. From folder structure, to CICD, to publishing to a container registry, to build notifications via slack with cookiecutter templates.

### Requirements
* cookiecutter or its [containerized cookiecutter](https://ckaserer.dev/docker/2020/02/15/cookiecutter.html) version
* travis
* container registry
* slack

### Getting started

To process the `docker-cookiecutter` template execute  

```
cookiecutter https://github.com/ckaserer/docker-cookiecutter
```

Here a quick look at the resulting target folder structure

```
docker-{{cookiecutter.image_name}}
├── .ci
│   └── test.sh                     <- put your tests here
├── .dockerignore                   <- ignore files when building
├── .github                         <- github issue templates
│   └── ISSUE_TEMPLATE
│       ├── bug_report.md
│       └── feature_request.md
├── .gitignore
├── .travis.yml                     <- slack notifications for our tests
├── CODE_OF_CONDUCT.md
├── Dockerfile                      <- what we actually want
├── LICENSE
├── README.md                       <- badges and quickstart info
└── bashrc                          <- bash functions for easy of use
```

Next we need to add our registry credentials to be able to push our images to a container registry and our slack integration for build notifications.
You can find a how-to for those steps in the `README.md` of your processed docker-cookiecutter template directory or directly via this [link](https://github.com/ckaserer/docker-travis-cli).

---

### Source 
* [cookiecutter.readthedocs.io/en/latest/README.html](https://cookiecutter.readthedocs.io/en/latest/README.html)
* [github.com/ckaserer/cookiecutter](https://github.com/ckaserer/cookiecutter)
* [github.com/ckaserer/docker-cookiecutter](https://github.com/ckaserer/docker-cookiecutter)
* [hub.docker.com/r/ckaserer/cookiecutter](https://hub.docker.com/r/ckaserer/cookiecutter)
