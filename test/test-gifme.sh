#!/usr/bin/env roundup

describe "gifme: animated gifs"

gifme="./gifme"

it_shows_help_with_no_argv() {
  $gifme | grep USAGE
}

it_runs_the_command() {
  $gifme -n | grep 'cmd'
}