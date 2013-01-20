#!/usr/bin/env roundup

describe "gifme: animated gifs"

gifme="./gifme"

it_needs_imagemagick() {
  path=$PATH
  PATH=/usr/bin:/bin:/usr/sbin:/sbin

  output=$($gifme || true)
  echo $output | grep 'imagemagick not found'
}

it_shows_help_with_no_argv() {
  $gifme | grep USAGE
}

it_runs_the_command() {
  $gifme -n | grep 'cmd'
}