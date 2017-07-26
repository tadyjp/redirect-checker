#!/bin/sh

set -eu

BASEDIR=$(dirname "$0")
URL_LIST="$BASEDIR/urls.txt"

cat ${URL_LIST} | while read line
do
  row=(`echo ${line}`)
  redirect_url=(`curl -I -s -o /dev/null ${row[0]} -w '%{redirect_url}'`)

  if [ ${redirect_url} = ${row[1]} ] ; then
    echo "OK: ${row[0]} -> ${redirect_url}"
  else
    echo "NG: ${row[0]} -> ${redirect_url} != ${row[1]}"
  fi
done
