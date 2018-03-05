[![Build Status](https://travis-ci.org/mattsch/fedora-nzbhydra2.svg?branch=master)](https://travis-ci.org/mattsch/fedora-nzbhydra2)
# Fedora NZBHydra2 Docker Container

Docker container for [NZBHydra2](https://github.com/theotherp/nzbhydra2) using Fedora.

## Usage

Create with defaults:

```bash
docker create -v /path/to/config/dir:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -p 5075:5075 --name=nzbhydra2 mattsch/fedora-nzbhydra2
```

Create with a custom uid/gid for the nzbhydra2 daemon:

```bash
docker create -v /path/to/config/dir:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e LUID=1234 -e LGID=1234 \
    -p 5075:5075 --name=nzbhydra2 mattsch/fedora-nzbhydra2
```

## Tags

Tags should follow upstream releases (including prereleases) and latest should
be the latest built.
