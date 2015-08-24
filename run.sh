#!/bin/bash

PLAYLISTS_DIR=./playlists
RECORDINGS_DIR=./recordings

function record {
  local -r IN=$1
  local -r OUT=$2

  #ffmpeg -re -i "${IN}" -c copy -bsf:a aac_adtstoasc "${OUT}"
  ffmpeg -i "${IN}" -c copy -bsf:a aac_adtstoasc "${OUT}"
}

for path in ${PLAYLISTS_DIR}/*; do
  file=`basename $path`

  m3u8_path="${path}"
  mp4_path="${RECORDINGS_DIR}/${file%.*}.mp4"

  if [ -f ${mp4_path} ]; then
    echo "Skipping ${file}, already recorded!"
  else
    echo "${m3u8_path} > ${mp4_path}"
    record "${m3u8_path}" "${mp4_path}"
  fi

  echo "Everything is done!"
done
