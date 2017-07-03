#!/usr/bin/env bash
#!/usr/bin/env bash
usage(){
  echo -e "usage: \n ${0} infile outfile"
  echo -e "\n   infile: any audio\n   outfile: output aac file"
  exit 1
}
[ -z "${2}" ] && usage
ffmpeg -i "${1}" \
    -codec:a aac -strict experimental \
    -b:a 26k \
    "${2}"

