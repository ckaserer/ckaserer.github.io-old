---
layout: post
title:  "Containerized cookiecutter"
description: "Containerized command-line utility that creates projects from cookiecutters (project templates), e.g. Python package projects, jQuery plugin projects."
date:   2020-02-15
banner_preview: 2020_02_15_cookiecutter/preview.png
banner_image: 2020_02_15_cookiecutter/banner.png
category: Docker
tags: [docker, cookiecutter]
---

<a href="https://travis-ci.com/ckaserer/cookiecutter">
    <img src="https://travis-ci.com/ckaserer/cookiecutter.svg?branch=master" style="height: auto !important; width: auto !important; "/>
</a>
<img src="https://img.shields.io/docker/pulls/ckaserer/cookiecutter" style="height: auto !important; width: auto !important; "/>
<img src="https://img.shields.io/github/license/ckaserer/cookiecutter" style="height: auto !important; width: auto !important; "/>
<img src="https://img.shields.io/maintenance/yes/2020" style="height: auto !important; width: auto !important; "/>

## What is cookiecutter?!

A command-line utility that creates projects from **cookiecutters** (project templates), e.g. creating a Python package project from a Python package project template.

* Documentation: [https://cookiecutter.readthedocs.io](https://cookiecutter.readthedocs.io)
* GitHub: [https://github.com/cookiecutter/cookiecutter](https://github.com/cookiecutter/cookiecutter)
* PyPI: [https://pypi.python.org/pypi/cookiecutter](https://pypi.python.org/pypi/cookiecutter)
* Free and open source software: [BSD license](https://github.com/cookiecutter/cookiecutter/blob/master/LICENSE)

---

## Cookiecutter as a Container
Wonderful, now let's use cookiecutter from a container instead of installing it on your machine.

### Base image
The image is based on [python:3](https://hub.docker.com/_/python) and can be built for any architecture supported by python:3.

### Flavors
The cookiecutter container image is available in 2 flavors
* **latest** <br>
  latest is build daily via travis and if the base images changes
* **version** <br>
  during each travis build the current cookiecutter version is validated and the image is tagged accordingly starting with `1.7.0`. More versions can be found at [hub.docker.com/r/ckaserer/cookiecutter](https://hub.docker.com/r/ckaserer/cookiecutter).

### Requirements
* Bash
* docker

---

## Getting started

To process any cookiecutter template you can execute  

```shell
docker run --rm -it -v $(pwd):/cookiecutter ckaserer/cookiecutter TEMPLATE
```

Or if you like the a more convinient approach you can put following lines in your bashrc

```bash
# cookiecutter
function cookiecutter () {
  local command="docker run --rm -it -v $(pwd):/cookiecutter ckaserer/cookiecutter"
  echo "+ ${command} $@" && ${command} $@
}
readonly -f cookiecutter
[ "$?" -eq "0" ] || return $?
```

and after sourcing your bashrc again to load the newly added function into our shell via 

```bash
source ~/.bashrc
```

you can process your template just like you would when installing cookiecutter on your machine via

```
cookiecutter TEMPLATE
```

---

### Source 
* [cookiecutter.readthedocs.io/en/latest/README.html](https://cookiecutter.readthedocs.io/en/latest/README.html)
* [github.com/ckaserer/cookiecutter](https://github.com/ckaserer/cookiecutter)
* [hub.docker.com/r/ckaserer/cookiecutter](https://hub.docker.com/r/ckaserer/cookiecutter)
