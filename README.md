# gifme

![pug](http://f.cl.ly/items/0T0f2w2C2z3T343w0u37/pug.gif)

## Fucking animations. You need them.

gifme is a simple command line tool to generate animated GIFs.

## Installation

Install gifme:

    gem install gifme

You'll also need to install ImageMagick. On OS X, this is easy using Homebrew:

    brew install imagemagick

## Usage

    gifme ~/Desktop/1.png ~/Desktop/2.png
    You now have a handsome animation at ~/Desktop/animated.gif

You can also glob, of course:

    gifme ~/Desktop/*.jpg
    You now have a handsome animation at ~/Desktop/animated.gif

## CloudApp

Once your animation is finished up, we'll try to upload it to
[CloudApp](http://www.getcloudapp.com). If you have my
[`cloudapp`](https://github.com/holman/dotfiles/blob/master/bin/cloudapp)
script installed, we'll use that, otherwise we'll just skip this whole step.

## Super Advanced Usage

On some gifs, it's nice to have a smooth loop, so when it ends there's not a
jarring leap from the last frame to the first frame again. Use the `--reverse`
switch to create the animation like normal, and then reverse the frames and add
them to the animation so it looks like one smooth motion and back again.

    gifme FILES --reverse

If you pass in a URL of a gif instead of FILES, we'll download that gif, split
it into its constituent frames, and let you recreate it. For example, you could
take a gif you find online and give it that `--reverse` look:

    gifme http://tumblr.com/some-crazy.gif --reverse

You can also resize shit. We default to 500 pixels, but do whatever the fuck
you want.

    gifme http://tumblr.com/some-crazy.gif --width=1000

For other options, check out the help:

    gifme -h

## History

If you're curious, gifme was initially a few-line shell script in [my
dotfiles](https://github.com/holman/dotfiles). Eventually it became clear that
animation is a fundamental part of our society, and I split it out into its own
tiny project.

If you're curious, I featured the older gifme version [in a
screencast](http://zachholman.com/2011/01/automating-inefficiencies/) I made
that describes how animated gifs are an integral part of working at GitHub.

## Much Love

From [@holman](https://twitter.com/holman). I love you.
