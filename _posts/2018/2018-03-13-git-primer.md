---
title:  "Git Primer"
date:   2018-03-13 05:18:00
categories: db
permalink: git-primer
comments: true
---

```bash
## Remotes

# Checkout remote branch
git branch -v -a # First show all remoteX/branchX
git checkout -b somebranch someremote/somebranch # Now checkout someremote/somebranch to a local one

# Change remote for a branch
git branch branch_name --set-upstream-to your_new_remote/branch_name # => change remote for a branch.
```