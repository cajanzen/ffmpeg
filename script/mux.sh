#!/usr/bin/env bash
usage(){
  echo -e "usage: \n ${0} audiofile videofile muxedfile"
  echo -e "\n   audiofile: any audio\n   videofile: any video\n   outfile: output mp4 file"
  exit 1
}
[ -z "${3}" ] && usage
ffmpeg -i "${1}" -i "${2}" -c:a copy -c:v copy -movflags +faststart "${3}"

