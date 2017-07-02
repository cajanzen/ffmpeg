#!/usr/bin/env bash
usage(){
  echo -e "usage: \n ${0} infile outfile [speedfactor]"
  echo -e "\n   infile: any input video\n   outfile: output mp4 file"
  echo -e "   speedfactor (optional): less than 1 to speed up, greater than 1 to slow down"
  exit 1
}
[ -z "${2}" ] && usage
# 0.33*PTS = 3x speed multiplier
[ -z "${3}" ] && filterexp="" || filterexp="-filter:v \"setpts=${3}*PTS\""
echo ffmpeg -i "${1}" \
    -codec:v h264 ${filterexp} \
    -b:v 200k -movflags +faststart \
    "${2}"
