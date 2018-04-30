<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Git" FOLDED="false" ID="ID_1717097896" CREATED="1521813651311" MODIFIED="1521813655723" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="15" RULE="ON_BRANCH_CREATION"/>
<node TEXT="configurations" POSITION="right" ID="ID_169919313" CREATED="1521813688542" MODIFIED="1523343476969">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      git config --system # =&gt; /etc/gitconfig
    </p>
    <p>
      git config --global # =&gt; ~/.gitconfig or ~/.config/git/config
    </p>
    <p>
      git config --local # =&gt; .git/config
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
<node TEXT="global" ID="ID_1199895376" CREATED="1521813695505" MODIFIED="1521813697473"/>
<node TEXT="user" ID="ID_1554808895" CREATED="1521813698081" MODIFIED="1521813707041"/>
<node TEXT="repo" ID="ID_1659963182" CREATED="1521813708174" MODIFIED="1521813711513"/>
<node TEXT="https://dev.to/tomerbendavid/git-configurations-2ngi" ID="ID_679806143" CREATED="1521813896971" MODIFIED="1521813934900" LINK="https://dev.to/tomerbendavid/git-configurations-2ngi"/>
</node>
<node TEXT="resources" POSITION="left" ID="ID_30873061" CREATED="1521813763463" MODIFIED="1521813765621">
<edge COLOR="#0000ff"/>
<node TEXT="http://ohshitgit.com" ID="ID_1730121557" CREATED="1521813781093" MODIFIED="1521813842665" LINK="http://ohshitgit.com"/>
<node TEXT="https://github.com/k88hudson/git-flight-rules" ID="ID_1310111977" CREATED="1521813852497" MODIFIED="1521813852497" LINK="https://github.com/k88hudson/git-flight-rules"/>
</node>
<node TEXT="rebase" POSITION="left" ID="ID_555037116" CREATED="1523302740099" MODIFIED="1523302896156">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      a way to integrate two branches instead of merge. instead of a branch - straight line, appends your commits to like the master branch.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="git remote" POSITION="right" ID="ID_530514680" CREATED="1523380381998" MODIFIED="1523380383588">
<edge COLOR="#00ffff"/>
<node TEXT="git push" ID="ID_1519099079" CREATED="1523636216613" MODIFIED="1523865083605"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      nothing in push? it's only pushing the commits.&#160;&#160;control what is pushed, what is transmitted when we push.
    </p>
    <p>
      1. `git push` with no args would push all branches!&#160;&#160;so this is the default.
    </p>
    <p>
      `git config --global push.default matching`&#160;&#160;this is the default match the local name to remote name and push all.
    </p>
    <p>
      1. `git fconfig --global push.default nothing` - so you have specify explicitly what you want to push.
    </p>
    <p>
      1. `git config --global push.default current` push only the current branch.&#160;&#160;this is what i like.
    </p>
    <p>
      1. `git config --global push.default tracking` - but you have to set it before you create or pull the branch.
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
<node TEXT="multi master" ID="ID_1393990975" CREATED="1523636780095" MODIFIED="1523638325504"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      setting has changed so that today will be simple push only current.
    </p>
    <p>
      1. we have multiple masters one from master one from upstream ...
    </p>
    <p>
      `git checkout somefeature` if it finds it on a only one remote it would check it out! because it knows determinsticly what the remote branch is.
    </p>
    <p>
      `git add remote github2 http://github..` so now you have all the branches twice in remotes.now it would not checkout because of ambiguity the branch is in both branches.&#160;&#160;the error will say you dont have such a branch because you have 2 of them.
    </p>
    <p>
      `git checkout -b myfeature -t github2/myfeature` =&gt; we explicitly say from which remote to check it out.
    </p>
    <p>
      now if you want to check it out from anohter remote you do
    </p>
    <p>
      `git checkout -b originmyfeature -t origin/myfeature`
    </p>
    <p>
      each branch points in the git configuration to which remote its pointing to.
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="git remote -v" ID="ID_1425496068" CREATED="1523380384079" MODIFIED="1523380386381"/>
<node TEXT="git branch -r" ID="ID_181117669" CREATED="1523381961633" MODIFIED="1523381977038"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      show remote branches.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="git pull" ID="ID_411866949" CREATED="1523302660797" MODIFIED="1523865092868">
<node TEXT="default merge" ID="ID_1125826849" CREATED="1523302712754" MODIFIED="1523302717500">
<node TEXT="git pull --rebase" ID="ID_1748348568" CREATED="1523380222984" MODIFIED="1523383750927"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      rebase instead.&#160;&#160;instead of two lines (2 branches) appends your commit to the master branch one straight line.&#160;&#160;So rebase is conceptually simulating that we take turns like concurrency we take turns on the master and not updating concurrently.
    </p>
    <p>
      
    </p>
    <p>
      demo change two separate files.&#160;&#160;git push.&#160;&#160;one of them wont work.&#160;&#160;need to do git pull.&#160;&#160;then git push works.
    </p>
    <p>
      git show the graph and you will see that there are like separate lines that were merged.
    </p>
    <p>
      now doing instead `git pull --rebase`:
    </p>
    <p>
      1. imagine put aside my work.
    </p>
    <p>
      2. pull the master remote.
    </p>
    <p>
      3. and then stick my changes to the end.
    </p>
    <p>
      so now we actually taking turns.&#160;&#160;if we need to resolve this, we resolve one continue to next etc.
    </p>
    <p>
      timestamps are irrelevant only the order of the tool git is not usung it its just human decoration.
    </p>
    <p>
      **huge advantage in linear history.**
    </p>
  </body>
</html>
</richcontent>
<node TEXT="love the straight line!" ID="ID_240232402" CREATED="1523381365218" MODIFIED="1523381370931"/>
</node>
<node TEXT="git config branch.autosetuprebase always" ID="ID_985442596" CREATED="1523381881320" MODIFIED="1523382022172"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      always rebased indicator to what we want to do.
    </p>
    <p>
      git checkout branch will show that the default is rebase.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="git commit" POSITION="left" ID="ID_295514077" CREATED="1523380521302" MODIFIED="1523380522971">
<edge COLOR="#7c0000"/>
<node TEXT="metadata" ID="ID_1077341119" CREATED="1523380523345" MODIFIED="1523380541910"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      just strings, they could be wrong not credenhtials, commit message, author.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="best practice" POSITION="right" ID="ID_1441455060" CREATED="1523381793072" MODIFIED="1523381807794">
<edge COLOR="#00007c"/>
<node TEXT="coarse grained" ID="ID_1120038659" CREATED="1523381808259" MODIFIED="1523381832292"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      better to squash coars grained commits here is my feature, commits are self description to work.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="directories" POSITION="left" ID="ID_295531660" CREATED="1523445461210" MODIFIED="1523445463183">
<edge COLOR="#007c00"/>
<node TEXT="refs" ID="ID_1213176226" CREATED="1523445463428" MODIFIED="1523445491260"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      pointers to commits, branches, tags, remotes.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="rerere" POSITION="right" ID="ID_267269216" CREATED="1523557752514" MODIFIED="1523559779788">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      **Reuse Recorded Resolution of conflicted merges**.&#160;&#160;Record that merge onflict and if you see it again reuse it.&#160;&#160;. if you solve a merge coflict do you go through the same thing when you need ot merge it to anoher branch? git helps with that with rerere.&#160;&#160;What's its scope of what its recording?
    </p>
    <p>
      
    </p>
    <p>
      create same file with different content in two different branches. push them.&#160;&#160;rememeber rerere is enabled.&#160;&#160;now if we do fetch now we do each pushed ot his own branch.
    </p>
    <p>
      git merge origin/otherbranch # merge failed.
    </p>
    <p>
      get rerere status # it's saying that the files are being observed.
    </p>
    <p>
      git rerere diff # it's showng the diff conflict. and we merge the conflict with the text editor. save the file.
    </p>
    <p>
      git status # showing both added the files.
    </p>
    <p>
      git add .
    </p>
    <p>
      git status # files modified ok.
    </p>
    <p>
      git rerere status # still watchig the file.&#160;&#160;and it's showing that the combination is memorizing the ocmbination.
    </p>
    <p>
      git commit -m &quot;rsoled&quot; # recorded resolution for &quot;file.txt&quot; it's storing it for 15 days or 60 days.
    </p>
    <p>
      git rerere gc # will cleanup rerere all that are older than 15 days.
    </p>
    <p>
      .git/rr-cache
    </p>
    <p>
      cat .git/rr-cache/&lt;somehash&gt; # its a directory
    </p>
    <p>
      git rr-cache is only local no push pull.
    </p>
    <p>
      # git merge somebranch # and if it sees the same exact files it would just resolve them.
    </p>
    <p>
      git commit # without a commit message.
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
<node TEXT="git config rerere.enabled true" ID="ID_306969831" CREATED="1523557781597" MODIFIED="1523557795313">
<font SIZE="8"/>
</node>
</node>
<node TEXT="git merge" POSITION="left" ID="ID_409597173" CREATED="1523559854187" MODIFIED="1523559856486">
<edge COLOR="#007c7c"/>
<node TEXT="git merge --abort" ID="ID_1963858288" CREATED="1523559856803" MODIFIED="1523559863580">
<font SIZE="8"/>
</node>
</node>
<node TEXT="presentation" POSITION="right" ID="ID_1012301741" CREATED="1523629479863" MODIFIED="1523638241325">
<edge COLOR="#7c7c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Beautiful is better than ugly.
    </p>
    <p>
      Explicit is better than implicit.
    </p>
    <p>
      Simple is better than complex.
    </p>
    <p>
      Complex is better than complicated.
    </p>
    <p>
      Flat is better than nested.
    </p>
    <p>
      Sparse is better than dense.
    </p>
    <p>
      Readability counts.
    </p>
    <p>
      git didnt' achive the above.
    </p>
    <p>
      
    </p>
    <p>
      a good progammer worries about data a bad programmer worries about code.
    </p>
    <p>
      
    </p>
    <p>
      1. aspect technical
    </p>
    <p>
      2. how to do brnching questions can be best practice its two kinds or political branching strategyt.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="kv store" ID="ID_688549523" CREATED="1523691289858" MODIFIED="1523691292143">
<node TEXT="treat it as data" ID="ID_760838314" CREATED="1523691293320" MODIFIED="1523706082031"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      cd .git/objects
    </p>
    <p>
      find . -name -type f | wc -l
    </p>
    <p>
      
    </p>
    <p>
      objects are: blogs, trees, commits, tag
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="objects" ID="ID_1264076056" CREATED="1523696032133" MODIFIED="1523696033578">
<node TEXT="set key" ID="ID_888259934" CREATED="1523691442497" MODIFIED="1523696486157"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      echo 'test content' | git hash-object -w --stdin
    </p>
    <p>
      
    </p>
    <p>
      if you set multiple times it will not delete the hash it will add new objects.
    </p>
    <p>
      if you delete locally the file you can get it back each version by git cat-file the hashes.
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="echo &apos;test content&apos; | git hash-object -w --stdin" ID="ID_6461480" CREATED="1523696496208" MODIFIED="1523696502853">
<font SIZE="8"/>
</node>
</node>
<node TEXT="get key" ID="ID_1623597015" CREATED="1523691465900" MODIFIED="1523691607891"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      git cat-file -p d670460b4b4aece5915caf5c68d12f560a9fe3e4
    </p>
    <p>
      
    </p>
    <p>
      tree fb1cf9738e80e62cacd7cac8e795afd38e5ce868
    </p>
    <p>
      parent 0f9fc521c2593733c9413e0061e4586120e63393
    </p>
    <p>
      author someuthor tsomemail 1519288832 +0200
    </p>
    <p>
      committer someauthor somemail 1519288832 +0200
    </p>
    <p>
      
    </p>
    <p>
      TMSCSSC-1828
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="tree" ID="ID_514869788" CREATED="1523696041594" MODIFIED="1523696394947"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      can contain subtrees. correlates objects to filenames.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="filenames" ID="ID_1791842305" CREATED="1523696043891" MODIFIED="1523696046914"/>
<node TEXT="group of files" ID="ID_1904902260" CREATED="1523696047523" MODIFIED="1523696056808"/>
<node TEXT="like directory" ID="ID_1625186506" CREATED="1523696072599" MODIFIED="1523696074854"/>
<node TEXT="git cat-file -p master^{tree}" ID="ID_885729390" CREATED="1523696220412" MODIFIED="1523696244184"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      print the latest commit of tree pointer to latest tree.
    </p>
  </body>
</html>

</richcontent>
<font SIZE="8"/>
</node>
<node TEXT="filename to object" ID="ID_1764842552" CREATED="1523696633914" MODIFIED="1523696651400">
<node TEXT="git update-index --add new.txt" ID="ID_61505870" CREATED="1523696776076" MODIFIED="1523696803104">
<font SIZE="8"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      add file to index
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="git update-index --add --cacheinfo 100644 d670460b4b4aece5915caf5c68d12f560a9fe3e4 myfile.txt" ID="ID_1691419515" CREATED="1523696651815" MODIFIED="1523696672514">
<font SIZE="8"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      add to index the object
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="git write-tree" ID="ID_298315423" CREATED="1523696673063" MODIFIED="1523697011909"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#10007; git write-tree
    </p>
    <p>
      d936f53d6a3450e681f4d6948394c9a7d8396f42
    </p>
    <p>
      
    </p>
    <p>
      create a new tree from our current index.
    </p>
    <p>
      each such write-tree create a new snapshot so we have a new snapshot of our data.
    </p>
  </body>
</html>

</richcontent>
<font SIZE="8"/>
</node>
<node TEXT="git cat-file -p d936f53d6a3450e681f4d6948394c9a7d8396f42" ID="ID_399315486" CREATED="1523696697459" MODIFIED="1523696798809"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      print the tree that was written
    </p>
  </body>
</html>

</richcontent>
<font SIZE="8"/>
</node>
</node>
<node TEXT="subdirectory" ID="ID_60174755" CREATED="1523696861045" MODIFIED="1523696875419"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      or load subtree into index
    </p>
  </body>
</html>

</richcontent>
<node TEXT="read subtree into index" ID="ID_285200996" CREATED="1523696875751" MODIFIED="1523696878774">
<node TEXT="git read-tree --prefix=bak skfj0jlsjflskfjjsh" ID="ID_6557627" CREATED="1523696879887" MODIFIED="1523696972390">
<font SIZE="8"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      now bak is a subtree for the tree we read and added the tree.
    </p>
    <p>
      each git
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="git write-tree" ID="ID_157402149" CREATED="1523696911056" MODIFIED="1523696916891">
<font SIZE="8"/>
</node>
</node>
</node>
</node>
<node TEXT="see all objects" ID="ID_1310576532" CREATED="1523697262980" MODIFIED="1523697265386">
<node TEXT="find .git/objects -type f" ID="ID_1558367036" CREATED="1523697266311" MODIFIED="1523697289266"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      note that we see both blobs trees and commits.
    </p>
  </body>
</html>

</richcontent>
<font SIZE="8"/>
</node>
</node>
<node TEXT="commit object" ID="ID_1529020039" CREATED="1523697044701" MODIFIED="1523697239886"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      this is information about the commit this is how you spefcify the commit message it is a commit object. for demo we can now add commit messages to the other commits, AMAZINg we have just made commits without using any of the git commands.!
    </p>
  </body>
</html>

</richcontent>
<node TEXT="echo &quot;commit message&quot; | git commit-tree 92834928" ID="ID_105283935" CREATED="1523697047764" MODIFIED="1523697154736">
<font SIZE="8"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      here we add a comimt message to the tree with hash 928... and git will automatically add the author timestamp and email info to this commit tree hash.&#160;&#160;you can view it with `git cat-file -p 92834...`
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="tag object" ID="ID_427228710" CREATED="1523703138596" MODIFIED="1523703140957">
<node TEXT="tagger" ID="ID_776234514" CREATED="1523703183940" MODIFIED="1523703185469"/>
<node TEXT="date" ID="ID_995447723" CREATED="1523703186077" MODIFIED="1523703189298"/>
<node TEXT="message" ID="ID_119746090" CREATED="1523703190307" MODIFIED="1523703191592"/>
<node TEXT="pointer" ID="ID_1122220941" CREATED="1523703192139" MODIFIED="1523703193316"/>
<node TEXT="usage" ID="ID_1719183577" CREATED="1523703194527" MODIFIED="1523703385888"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      usually points to a commit and not to a tree.
    </p>
    <p>
      
    </p>
    <p>
      ```bash
    </p>
    <p>
      git update-ref refs/tags/v1.0 sjkdfhsofw # =&gt; lightweight tag.&#160; reference never moves.
    </p>
    <p>
      git tag -a v1.1 lasjflkajsfksj -m &quot;test tag' #=&gt; annotated tag, git creates a tag object and writes a reference to point to it.
    </p>
    <p>
      cat .git/refs/tags/v1.1
    </p>
    <p>
      slkajsflkajsfdklj
    </p>
    <p>
      git cat-file -p alskdfjlaskfj # =&gt; will show that its a pointer to a commit. you can tag any git object doesnt have to be a commit.
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="remotes" ID="ID_1862003286" CREATED="1523703446710" MODIFIED="1523703448045">
<node TEXT="refs/remotes" ID="ID_205975466" CREATED="1523703457706" MODIFIED="1523703543659"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      remotes are different from branches (refs/heads) in that they are read only&#160;&#160;you never update a remote ref with commit command only git&#160;&#160;this is the last known state pointer of the remote.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="packfile" ID="ID_1280144980" CREATED="1523706186414" MODIFIED="1523706238577"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      1. update a fiile
    </p>
    <p>
      1. commit
    </p>
    <p>
      1. you will see a different hash.&#160;&#160;we still have the previous hash.
    </p>
    <p>
      
    </p>
    <p>
      so we are wasting space we have 2 blobs.&#160;&#160;git can pack it from time to time so stored in the same object with the diff.
    </p>
    <p>
      
    </p>
    <p>
      call git gc for initiating pack.
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="git gc" ID="ID_1456073983" CREATED="1523706241528" MODIFIED="1523706271387">
<font SIZE="8"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      also when pushing to a remote then git performs gc.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="pack-hash.idx" ID="ID_1332857736" CREATED="1523706316127" MODIFIED="1523706341367"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      pack of the index, the current index content.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="pack-hash.pack" ID="ID_55103505" CREATED="1523706324306" MODIFIED="1523706349215"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      pack of all the objects that were removed.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="git verify-pack" ID="ID_1911916809" CREATED="1523706357175" MODIFIED="1523706385304"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in order to view the content of pack
    </p>
    <p>
      `git verify-pack -v .git/objects/pack/pack-hash...idx
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="refspec" ID="ID_1033601729" CREATED="1523706431838" MODIFIED="1523710330136"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      git remote add origin https://github.com/myuser/somethinggit
    </p>
    <p>
      
    </p>
    <p>
      cat .git/config
    </p>
    <p>
      [remote &quot;origin&quot;]
    </p>
    <p>
      &#160;&#160;url = https://github.com/myuser/somethinggit
    </p>
    <p>
      &#160;&#160;fetch = +refs/heads/*:refs/remotes/origin/* # =&gt; refspec &lt;src&gt;:&lt;dest&gt; so will take references from remote heads to local dir to refs/remotes/origin
    </p>
    <p>
      
    </p>
    <p>
      + # =&gt; update the reference even if it isn't a fast forward.
    </p>
    <p>
      
    </p>
    <p>
      you can access log of remote branch using local target of the refspec like this: all the below are equivalent.&#160;&#160;git expands all of them to refs/remotes/origin/master
    </p>
    <p>
      
    </p>
    <p>
      git log origin/master
    </p>
    <p>
      git log remotes/origin/master
    </p>
    <p>
      git log refs/remotes/origin/master
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="references" ID="ID_1025330470" CREATED="1523699511971" MODIFIED="1523699538557"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      instead of remembering keys, let's have references to some special keys, like the HEAD whcih simply points to a sha1 key
    </p>
  </body>
</html>

</richcontent>
<node TEXT="master" ID="ID_1115013984" CREATED="1523699562477" MODIFIED="1523699779150"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      create a reference to latest commit:
    </p>
    <p>
      
    </p>
    <p>
      ```bash
    </p>
    <p>
      echo 123oihskfh293 &gt; .git/refs/heads/master
    </p>
    <p>
      git log --pretty=oneline master
    </p>
    <p>
      ```
    </p>
    <p>
      
    </p>
    <p>
      and to more safely update a ref: `git update-ref refs/heads/test cacacaj83`
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="branch" ID="ID_1520109561" CREATED="1523699806789" MODIFIED="1523699825690"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      when you do `git branch mybranch` how does it know from where to branch? it's from the HEAD which points to the latest commit.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="HEAD" ID="ID_1640778039" CREATED="1523699840274" MODIFIED="1523699888246"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      HEAD is symbolic reference to the branch we are currently on it does not contain a SHA1 it's a pointer to a reference.
    </p>
    <p>
      HEAD content: refs/heads/mybranch
    </p>
  </body>
</html>

</richcontent>
<node TEXT="@" ID="ID_504052906" CREATED="1523882673203" MODIFIED="1523882689405"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Head is also known as &quot;@&quot; you can use @ whenever you need head
    </p>
  </body>
</html>

</richcontent>
<font SIZE="8"/>
</node>
<node TEXT="git checkout @{-1}" ID="ID_1893497389" CREATED="1523882690815" MODIFIED="1523883104180">
<font SIZE="8"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      git checkout @ is HEAD then go to the last place (-1) of the HEAD meaning the last branch that HEAD pointed to.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="maintenance recovery" ID="ID_1989679458" CREATED="1523720785568" MODIFIED="1523720827973"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      if you do `git reset --hard skfjhskfdhj` and thus you go back and loose a commit you can do `git reflog;git log -g` and then `git checkout to an older commit`
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="git log" POSITION="right" ID="ID_1830072467" CREATED="1523876728919" MODIFIED="1523876787301">
<edge COLOR="#00ff00"/>
<node TEXT="git log --oneline --decorate --graph --all" ID="ID_184204854" CREATED="1523876772189" MODIFIED="1523876780520">
<font SIZE="8"/>
</node>
</node>
<node TEXT="ls-files" POSITION="left" ID="ID_904482779" CREATED="1523882090231" MODIFIED="1523882092620">
<edge COLOR="#ff00ff"/>
<node TEXT="git ls-files --stage" ID="ID_546590950" CREATED="1523882094275" MODIFIED="1523882117027">
<font SIZE="8"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Show staged files.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</map>
