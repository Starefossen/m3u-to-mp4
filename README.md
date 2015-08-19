# m3u-to-mp4

Bulk record [`m3u`](https://en.wikipedia.org/wiki/M3U) (or `m3u8`) playlists to
`mp4` files using [ffmpeg](http://ffmpeg.org).

## Requirements

* [Docker](https://github.com/docker/docker)
* [Docker Compose](https://github.com/docker/compose)

## Directory Structure

Put you `m3u` playlists in the `playlists` directory. Corresponding `mp4`
recordings will be avaiable in the `recordings` directory.

```
.
|-- run.sh
|-- playlists
|   |-- master1.m3u
|   |-- master2.m3u
|   `-- master3.m3u
`-- recordings
    |-- master1.mp4
    |-- master2.mp4
    `-- master3.mp4
```

## Usage

```
docker-compose run -rm record
```

## License

This Docker Image is licensed under the [MIT
License](https://github.com/Starefossen/m3u8-to-mp3/blob/master/LICENSE).

Software contained in this image is licensed under the following:

* ffmpeg: [LGPLv2.1](http://ffmpeg.org/legal.html)
