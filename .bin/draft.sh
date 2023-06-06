#!/bin/bash

# Check if title argument is provided
if [ -z "$1" ]; then
  echo "Title is missing."
  exit 1
fi

# Set variables
title="$1"
title_ns="$(echo "$1" | awk '{ gsub(" ", "-", $0); print tolower($0) }')"
date_long="$(date +'%Y-%m-%d %H:%M:%S %z')"
date_short="$(date +'%Y-%m-%d')"
filename="/home/brian/brian-beeler.github.io/_drafts/$date_short-$title_ns.md"

touch $filename
echo "---" >> $filename
echo "title: $title" >> $filename
echo "author: brian" >> $filename
echo "date: $date_long" >> $filename
echo "categories: [tutorial,code,project,fiction,nonfiction,essay,photography,poetry,haiku,senryu,LụcBát,tanka,Buddhism,Daoism]" >> $filename
echo "tags: [Spring,Summer,Autumn,Winter,snow,forest,beach,sunrise,sunset,VietNam,DaNang,Fujifilm,monochrome,landscape,abstract]" >> $filename
echo "pin: true" >> $filename
echo "render_with_liquid: false" >> $filename
echo "image:" >> $filename
echo "  path: https://brian-beeler.github.io/assets/images/" >> $filename
echo "  lqip: https://brian-beeler.github.io/assets/images/" >> $filename
echo "---" >> $filename
echo "" >> $filename
echo "### **FirstHeading**" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "<figure>" >> $filename
echo "  <img src="/assets/images/avatar.jpg" alt="" style="height: 60%; width: 60%;">" >> $filename
echo "  <figcaption><I>CaptionGoesHere.</I></figcaption>" >> $filename
echo "</figure>" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "" >> $filename
echo "" >> $filename







