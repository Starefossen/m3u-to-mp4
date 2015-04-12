# m3u8-to-mp3

Bulk record m3u8 playlists to mp3 files using ffmpeg

## Requirements

* Docker
* Docker Compose

## Files

Put you `m3u8` playlists in the `playlists` directory. Corresponding recordings
will be avaiable in the `recordings` directory.

```
.
|-- run.sh
|-- playlists
|   |-- master1.m3u8
|   |-- master2.m3u8
|   `-- master3.m3u8
`-- recordings
    |-- master1.mp4
    |-- master2.mp4
    `-- master3.mp4
```

## Usage

```
docker-compose run -rm record
```

