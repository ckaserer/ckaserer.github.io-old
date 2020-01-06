#!/bin/bash

readonly CKASERER_GITHUB_IO_HOME=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function ckaserer-serve () {
  (cd ${CKASERER_GITHUB_IO_HOME} && bundle exec jekyll serve)
}
readonly -f ckaserer-serve
[ "$?" -eq "0" ] || return $?
