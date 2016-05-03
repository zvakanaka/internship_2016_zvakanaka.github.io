#!/bin/bash
touch "_posts/$(/usr/local/bin/gdate --date='today' +%Y-%-m-%-d).md"
echo -e "---\nlayout: post\ntitle: FamilySearch Internship\n---" >> "_posts/$(gdate --date='today' +%Y-%-m-%-d).md"
