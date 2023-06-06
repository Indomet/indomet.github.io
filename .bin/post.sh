#!/bin/bash
# 
# 

if [ -z "$1" ] || [ -z "$2" ]; then
  echo " "
  echo "Jekyll::Compose  https://github.com/jekyll/jekyll-compose"
  echo "../post.sh OPTION \"TITLE\""
  echo " "
  echo "options:"
  echo "  draft      # Creates a new draft post with the given NAME"
  echo "  post       # Creates a new post with the given NAME"
  echo "  publish    # Moves a draft into the _posts directory and sets the date"
  echo "  unpublish  # Moves a post back into the _drafts directory"
  echo "  page       # Creates a new page with the given NAME"
  echo "  rename     # Moves a draft to a given NAME and sets the title"
  echo "  compose    # Creates a new file with the given NAME"
  exit 1
fi

bundle exec jekyll $1 $2

