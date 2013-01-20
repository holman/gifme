#!/usr/bin/env roundup

describe "gifme-movie: deconstruct movies to frames"

gifme="./gifme-movie"

it_shows_help_with_no_argv() {
  $gifme | grep USAGE
}

it_deconstructs_a_movie() {
  $gifme -n | grep '/tmp/gifme-movie'
}