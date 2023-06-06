#!/bin/bash
#
echo "running: bundle exec jekyll build"
bundle exec jekyll build
echo "running: bundle exec jekyll serve"
bundle exec jekyll serve