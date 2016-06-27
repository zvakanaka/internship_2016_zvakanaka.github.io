#!/bin/bash
# Put the following line in cron with `crontab -e`
# 24 * * * * cd ~/sandbox/zvakanaka.github.io/ && bash new-entry.sh && echo $(date): Task ran >> cron.log
weekNum=$(echo $(gdate --date='today' +%W) - 16 | bc)
weekDay=$(gdate --date='today' +%A)
fullDate=$(gdate --date='today' +%Y-%-m-%-d)
outFile="_posts/$fullDate-Week-$weekNum-$weekDay.md"

if [ ! -f $outFile ]; then
  echo -e "---\nlayout: post\ntitle: Week $weekNum - $weekDay\n---" >> $outFile
else
  echo ERROR: Post File: $outFile already exists
fi
