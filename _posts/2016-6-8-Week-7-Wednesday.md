---
layout: post
title: Week 7 - Wednesday
---
Here is how to ['squash'](https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History#Squashing-Commits) the last three commits:  
`git rebase -i HEAD~3`  

Something like this will appear:  
```#  
# Commands:  
#  p, pick = use commit  
#  r, reword = use commit, but edit the commit message  
#  e, edit = use commit, but stop for amending  
#  s, squash = use commit, but meld into previous commit  
#  f, fixup = like "squash", but discard this commit's log message  
#  x, exec = run command (the rest of the line) using shell  
#  
# These lines can be re-ordered; they are executed from top to bottom.  
#  
# If you remove a line here THAT COMMIT WILL BE LOST.  
#  
# However, if you remove everything, the rebase will be aborted.  
#
# Note that empty commits are commented out```  

Change `pick` to `squash` for the commits you want squashed.


There was a presentation about [Service Worker](https://youtu.be/cmGr0RszHc8) and it rocked.
