#!/bin/sh
set -e

# cleanup
rm -rf .jekyll-cache _site _posts/

# fetch posts
bundle exec pluto -c planet.ini update

# generate _posts/
bundle exec ./planet_gen_posts.rb

# build site
if [ -t 0 ] ; then
    bundle exec jekyll serve
else
    bundle exec jekyll build
fi

