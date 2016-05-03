#!/bin/bash
weekNum=$(echo $(gdate --date='today' +%W) - 16 | bc)
weekDay=$(gdate --date='today' +%A)
fullDate=$(gdate --date='today' +%Y-%-m-%-d)
outFile="_posts/$fullDate-Week-$weekNum-$weekDay.md"

touch $outFile
if [ ! -f $outFile ]; then
  echo -e "---\nlayout: post\ntitle: Week $weekNum - $weekDay\n---" >> $outFile
else
  echo ERROR: Post File: $outFile already exists
fi
