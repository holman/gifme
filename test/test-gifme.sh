#!/usr/bin/env roundup

describe "gifme: animated gifs"

gifme="./gifme"

it_shows_help_with_no_argv() {
  $gifme | grep USAGE
}