---
title:  "Git Primer"
date:   2018-03-13 05:18:00
categories: db
permalink: git-primer
comments: true
image: https://upload.wikimedia.org/wikipedia/commons/3/3f/Git_icon.svg
---


1.  [Concepts](#orgbece9ad)
    1.  [Cache eq Index eq Staged](#orgefb6777)
2.  [Configurations](#org51ce4a2)
3.  [git merge](#orgf1821fe)
    1.  [git merge &#x2013;abort](#orgc4c85cd)
4.  [Rebase](#org7aa80ca)
5.  [git remote](#org6b7c659)
    1.  [git push](#org13ca503)
    2.  [Branch to Github](#org4199fcd)
        1.  [multi master](#orgd4a2dae)
    3.  [git remote -v](#org56cf71e)
    4.  [git branch -r](#org43ceb03)
    5.  [git pull](#org8305b59)
        1.  [default merge](#orga97fbc3)
6.  [git commit](#orgee6d482)
    1.  [metadata](#org060e377)
7.  [best practice](#org31b45ff)
    1.  [coarse grained](#orga333aaf)
8.  [directories](#org1213198)
    1.  [refs](#orgbb1d255)
9.  [rerere](#orgcffcaf3)
10. [git merge somebranch \* and if it sees the same exact files it would just resolve them.](#orgaa08a20)
    1.  [git config rerere.enabled true](#org5eec7fb)
11. [presentation](#org37c07c7)
    1.  [kv store](#org22177f4)
        1.  [treat it as data](#org8c937d7)
        2.  [references](#org4259e4a)
        3.  [maintenance recovery](#org16bc161)
12. [git log](#org07d6809)
    1.  [git log &#x2013;oneline &#x2013;decorate &#x2013;graph &#x2013;all](#org96a5288)
13. [ls-files](#org985f38d)
    1.  [git ls-files &#x2013;stage](#org1756453)
14. [resources](#org59f9639)
    1.  [http://ohshitgit.com](#org2bcfabc)
    2.  [https://github.com/k88hudson/git-flight-rules](#orgeff27a0)



<a id="orgbece9ad"></a>

# Concepts

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Concept</th>
<th scope="col" class="org-left">Description</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Cache eq Index eq Staged</td>
<td class="org-left">When you hear of cache index or staged all these are the same things.</td>
</tr>
</tbody>
</table>


<a id="orgefb6777"></a>

## Cache eq Index eq Staged


<a id="org51ce4a2"></a>

# Configurations

`git config --system * => /etc/gitconfig`
`git config --global * => ~/.gitconfig or ~/.config/git/config`
`git config --local * => .git/config`
<https://dev.to/tomerbendavid/git-configurations-2ngi>


<a id="orgf1821fe"></a>

# git merge


<a id="orgc4c85cd"></a>

## git merge &#x2013;abort

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Command</th>
<th scope="col" class="org-left">Description</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">`git cherry-pick e43a6`</td>
<td class="org-left">Take e43a6 and rebase into current branch</td>
</tr>
</tbody>
</table>


<a id="org7aa80ca"></a>

# Rebase

a way to integrate two branches instead of merge. instead of a branch - straight line, appends your commits to like the master branch.


<a id="org6b7c659"></a>

# git remote

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">command</th>
<th scope="col" class="org-left">description</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">`git remote show upstream`</td>
<td class="org-left">Show remote branches</td>
</tr>


<tr>
<td class="org-left">`git checkout -b upstream1.3 upstream/1.3`</td>
<td class="org-left">Checkout remote branch</td>
</tr>


<tr>
<td class="org-left">`git remote -vv`</td>
<td class="org-left">Show branches remotes</td>
</tr>


<tr>
<td class="org-left">`git branch mybranch --set-upstream-to origin/branch_name`</td>
<td class="org-left">update the remote of branch to origin</td>
</tr>
</tbody>
</table>


<a id="org13ca503"></a>

## git push

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">command</th>
<th scope="col" class="org-left">description</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">`git remote set-url origin https://someuser:somepass@github.com/someuser/test-node-sequelize.git`</td>
<td class="org-left">git push userpass</td>
</tr>
</tbody>
</table>

nothing in push? it's only pushing the commits.  control what is pushed, what is transmitted when we push.

1.  `git push` with no args would push all branches!  so this is the default.
2.  `git config --global push.default matching`  this is the default match the local name to remote name and push all.

1.  \`git fconfig &#x2013;global push.default nothing\` - so you have specify explicitly what you want to push.
2.  \`git config &#x2013;global push.default current\` push only the current branch.  this is what i like.
3.  \`git config &#x2013;global push.default tracking\` - but you have to set it before you create or pull the branch.

\`\`\`


<a id="org4199fcd"></a>

## Branch to Github

`git remote add github https://github.com/tomer-ben-david/nodejs-fullstack-boilerplate.git`
`git push -u github public` - Push only public branch into github.


<a id="orgd4a2dae"></a>

### multi master

\`\`\`markdown
setting has changed so that today will be simple push only current.

1.  we have multiple masters one from master one from upstream &#x2026;

\`git checkout somefeature\` if it finds it on a only one remote it would check it out! because it knows determinsticly what the remote branch is.
\`git add remote github2 <http://github>..\` so now you have all the branches twice in remotes.now it would not checkout because of ambiguity the branch is in both branches.  the error will say you dont have such a branch because you have 2 of them.
\`git checkout -b myfeature -t github2/myfeature\` => we explicitly say from which remote to check it out.
now if you want to check it out from anohter remote you do
\`git checkout -b originmyfeature -t origin/myfeature\`
each branch points in the git configuration to which remote its pointing to.
\`\`\`


<a id="org56cf71e"></a>

## git remote -v


<a id="org43ceb03"></a>

## git branch -r

show remote branches.


<a id="org8305b59"></a>

## git pull


<a id="orga97fbc3"></a>

### default merge

1.  git pull &#x2013;rebase

    rebase instead.  instead of two lines (2 branches) appends your commit to the master branch one straight line.  So rebase is conceptually simulating that we take turns like concurrency we take turns on the master and not updating concurrently.
    
    demo change two separate files.  git push.  one of them wont work.  need to do git pull.  then git push works.
    git show the graph and you will see that there are like separate lines that were merged.
    now doing instead \`git pull &#x2013;rebase\`:
    
    1.  imagine put aside my work.
    2.  pull the master remote.
    3.  and then stick my changes to the end.
    
    so now we actually taking turns.  if we need to resolve this, we resolve one continue to next etc.
    timestamps are irrelevant only the order of the tool git is not usung it its just human decoration.
    ****huge advantage in linear history.****
    
    1.  love the straight line!

2.  git config branch.autosetuprebase always

    always rebased indicator to what we want to do.
    git checkout branch will show that the default is rebase.


<a id="orgee6d482"></a>

# git commit


<a id="org060e377"></a>

## metadata

just strings, they could be wrong not credenhtials, commit message, author.


<a id="org31b45ff"></a>

# best practice


<a id="orga333aaf"></a>

## coarse grained

better to squash coars grained commits here is my feature, commits are self description to work.


<a id="org1213198"></a>

# directories


<a id="orgbb1d255"></a>

## refs

pointers to commits, branches, tags, remotes.


<a id="orgcffcaf3"></a>

# rerere

\`\`\`markdown
****Reuse Recorded Resolution of conflicted merges****.  Record that merge onflict and if you see it again reuse it.  . if you solve a merge coflict do you go through the same thing when you need ot merge it to anoher branch? git helps with that with rerere.  What's its scope of what its recording?

create same file with different content in two different branches. push them.  rememeber rerere is enabled.  now if we do fetch now we do each pushed ot his own branch.
git merge origin/otherbranch \* merge failed.
get rerere status \* it's saying that the files are being observed.
git rerere diff \* it's showng the diff conflict. and we merge the conflict with the text editor. save the file.
git status \* showing both added the files.
git add .
git status \* files modified ok.
git rerere status \* still watchig the file.  and it's showing that the combination is memorizing the ocmbination.
git commit -m "rsoled" \* recorded resolution for "file.txt" it's storing it for 15 days or 60 days.
git rerere gc \* will cleanup rerere all that are older than 15 days.
.git/rr-cache
cat .git/rr-cache/<somehash> \* its a directory
git rr-cache is only local no push pull.


<a id="orgaa08a20"></a>

# git merge somebranch \* and if it sees the same exact files it would just resolve them.

git commit \* without a commit message.
\`\`\`


<a id="org5eec7fb"></a>

## git config rerere.enabled true


<a id="org37c07c7"></a>

# presentation

Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated.
Flat is better than nested.
Sparse is better than dense.
Readability counts.
git didnt' achive the above.

a good progammer worries about data a bad programmer worries about code.

1.  aspect technical
2.  how to do brnching questions can be best practice its two kinds or political branching strategyt.


<a id="org22177f4"></a>

## kv store


<a id="org8c937d7"></a>

### treat it as data

\`\`\`bash
cd .git/objects
find . -name -type f | wc -l

objects are: blogs, trees, commits, tag
\`\`\`

1.  objects

    1.  set key
    
        \`\`\`bash
        echo 'test content' | git hash-object -w &#x2013;stdin
        
        if you set multiple times it will not delete the hash it will add new objects.
        if you delete locally the file you can get it back each version by git cat-file the hashes.
        \`\`\`
        
        1.  echo 'test content' | git hash-object -w &#x2013;stdin
    
    2.  get key
    
        \`\`\`bash
        git cat-file -p d670460b4b4aece5915caf5c68d12f560a9fe3e4
        
        tree fb1cf9738e80e62cacd7cac8e795afd38e5ce868
        parent 0f9fc521c2593733c9413e0061e4586120e63393
        author someuthor tsomemail 1519288832 +0200
        committer someauthor somemail 1519288832 +0200
        
        TMSCSSC-1828
        \`\`\`

2.  tree

    can contain subtrees. correlates objects to filenames.
    
    1.  filenames
    
    2.  group of files
    
    3.  like directory
    
    4.  git cat-file -p master<sup>tree</sup>
    
        print the latest commit of tree pointer to latest tree.
    
    5.  filename to object
    
        1.  git update-index &#x2013;add new.txt
        
            add file to index
        
        2.  git update-index &#x2013;add &#x2013;cacheinfo 100644 d670460b4b4aece5915caf5c68d12f560a9fe3e4 myfile.txt
        
            add to index the object
        
        3.  git write-tree
        
            ✗ git write-tree
            d936f53d6a3450e681f4d6948394c9a7d8396f42
            
            create a new tree from our current index.
            each such write-tree create a new snapshot so we have a new snapshot of our data.
        
        4.  git cat-file -p d936f53d6a3450e681f4d6948394c9a7d8396f42
        
            print the tree that was written
    
    6.  subdirectory
    
        or load subtree into index
        
        1.  read subtree into index
        
            1.  git read-tree &#x2013;prefix=bak skfj0jlsjflskfjjsh
            
                now bak is a subtree for the tree we read and added the tree.
                each git
            
            2.  git write-tree

3.  see all objects

    1.  find .git/objects -type f
    
        note that we see both blobs trees and commits.

4.  commit object

    this is information about the commit this is how you spefcify the commit message it is a commit object. for demo we can now add commit messages to the other commits, AMAZINg we have just made commits without using any of the git commands.!
    
    1.  echo "commit message" | git commit-tree 92834928
    
        here we add a comimt message to the tree with hash 928&#x2026; and git will automatically add the author timestamp and email info to this commit tree hash.  you can view it with \`git cat-file -p 92834&#x2026;\`

5.  tag object

    1.  tagger
    
    2.  date
    
    3.  message
    
    4.  pointer
    
    5.  usage
    
        usually points to a commit and not to a tree.
        
        \`\`\`bash
        git update-ref refs/tags/v1.0 sjkdfhsofw \* => lightweight tag.  reference never moves.
        git tag -a v1.1 lasjflkajsfksj -m "test tag' \*=> annotated tag, git creates a tag object and writes a reference to point to it.
        cat .git/refs/tags/v1.1
        slkajsflkajsfdklj
        git cat-file -p alskdfjlaskfj \* => will show that its a pointer to a commit. you can tag any git object doesnt have to be a commit.
        \`\`\`

6.  remotes

    1.  refs/remotes
    
        remotes are different from branches (refs/heads) in that they are read only  you never update a remote ref with commit command only git  this is the last known state pointer of the remote.

7.  packfile

    \`\`\`markdown
    
    1.  update a fiile
    2.  commit
    3.  you will see a different hash.  we still have the previous hash.
    
    so we are wasting space we have 2 blobs.  git can pack it from time to time so stored in the same object with the diff.
    
    call git gc for initiating pack.
    \`\`\`
    
    1.  git gc
    
        also when pushing to a remote then git performs gc.
    
    2.  pack-hash.idx
    
        pack of the index, the current index content.
    
    3.  pack-hash.pack
    
        pack of all the objects that were removed.
    
    4.  git verify-pack
    
        in order to view the content of pack
        \`git verify-pack -v .git/objects/pack/pack-hash&#x2026;idx

8.  refspec

    \`\`\`bash
    git remote add origin <https://github.com/myuser/somethinggit>
    
    cat .git/config
    [remote "origin"]
      url = <https://github.com/myuser/somethinggit>
      fetch = +refs/heads/\*:refs/remotes/origin/\* \* => refspec <src>:<dest> so will take references from remote heads to local dir to refs/remotes/origin
    
    -   \* => update the reference even if it isn't a fast forward.
    
    you can access log of remote branch using local target of the refspec like this: all the below are equivalent.  git expands all of them to refs/remotes/origin/master
    
    git log origin/master
    git log remotes/origin/master
    git log refs/remotes/origin/master
    \`\`\`


<a id="org4259e4a"></a>

### references

instead of remembering keys, let's have references to some special keys, like the HEAD whcih simply points to a sha1 key

1.  master

    create a reference to latest commit:
    
    \`\`\`bash
    echo 123oihskfh293 > .git/refs/heads/master
    git log &#x2013;pretty=oneline master
    \`\`\`
    
    and to more safely update a ref: \`git update-ref refs/heads/test cacacaj83\`

2.  branch

    when you do \`git branch mybranch\` how does it know from where to branch? it's from the HEAD which points to the latest commit.

3.  HEAD

    HEAD is symbolic reference to the branch we are currently on it does not contain a SHA1 it's a pointer to a reference.
    HEAD content: refs/heads/mybranch
    
    1.  @
    
        Head is also known as "@" you can use @ whenever you need head
    
    2.  git checkout @{-1}
    
        git checkout @ is HEAD then go to the last place (-1) of the HEAD meaning the last branch that HEAD pointed to.


<a id="org16bc161"></a>

### maintenance recovery

if you do \`git reset &#x2013;hard skfjhskfdhj\` and thus you go back and loose a commit you can do \`git reflog;git log -g\` and then \`git checkout to an older commit\`


<a id="org07d6809"></a>

# git log


<a id="org96a5288"></a>

## git log &#x2013;oneline &#x2013;decorate &#x2013;graph &#x2013;all


<a id="org985f38d"></a>

# ls-files


<a id="org1756453"></a>

## git ls-files &#x2013;stage

Show staged files.


<a id="org59f9639"></a>

# resources


<a id="org2bcfabc"></a>

## <http://ohshitgit.com>


<a id="orgeff27a0"></a>

## <https://github.com/k88hudson/git-flight-rules>