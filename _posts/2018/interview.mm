<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Int" FOLDED="false" ID="ID_222677983" CREATED="1521894973387" MODIFIED="1521895055849" STYLE="oval">
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
<hook NAME="AutomaticEdgeColor" COUNTER="5" RULE="ON_BRANCH_CREATION"/>
<node TEXT="BFS" POSITION="right" ID="ID_1928311982" CREATED="1521894985833" MODIFIED="1521895089918">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```java
    </p>
    <p>
      public int findLeftMostNode(TreeNode root) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;Queue&lt;TreeNode&gt; queue = new LinkedList&lt;&gt;();
    </p>
    <p>
      &#160;&#160;&#160;&#160;queue.add(root);
    </p>
    <p>
      &#160;&#160;&#160;&#160;while (!queue.isEmpty()) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;root = queue.poll();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (root.right != null)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;queue.add(root.right);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (root.left != null)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;queue.add(root.left);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;return root.val;
    </p>
    <p>
      }
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
<node TEXT="queue" ID="ID_667698150" CREATED="1521894997014" MODIFIED="1521894998423">
<node TEXT="insert root" ID="ID_807772717" CREATED="1521895103728" MODIFIED="1521895105467">
<node TEXT="repeat" ID="ID_1166870315" CREATED="1521895106264" MODIFIED="1521895110683">
<node TEXT="pop node" ID="ID_542696493" CREATED="1521895006997" MODIFIED="1521895026218"/>
<node TEXT="insert children" ID="ID_1919592777" CREATED="1521895027235" MODIFIED="1521895087646"/>
</node>
</node>
</node>
</node>
<node TEXT="BTree" POSITION="left" ID="ID_1711635831" CREATED="1522393090723" MODIFIED="1522393184247">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <span charset="utf-8" style="color: rgb(33, 33, 33); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; word-spacing: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none"><font color="rgb(33, 33, 33)" face="Helvetica Neue, Helvetica, Arial, sans-serif" size="13px">In computer science, a&#160;B-tree&#160;is a self-balancing tree data structure that keeps data sorted and allows searches, sequential access, insertions, and deletions in logarithmic time. The&#160;B-tree&#160;is a generalization of a binary search tree in that a node can have more than two children. ![btree](http://www.virtualmachinery.com/images/tree.gif)</font></span>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="infix" POSITION="right" ID="ID_445322872" CREATED="1522735960958" MODIFIED="1522735990165">
<edge COLOR="#00ff00"/>
<node TEXT="postfix/prefix" ID="ID_409320205" CREATED="1522736447845" MODIFIED="1522736450166">
<node TEXT="convert to postfix/prefix" ID="ID_1644882608" CREATED="1522735990825" MODIFIED="1522736320732"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      postfix and prefix do not need parenthasis
    </p>
    <p>
      A + B * C =&gt; B C * +
    </p>
    <p>
      to convert: operands stay in same relative places, only operators change positions.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="no need parenthasis" ID="ID_525362810" CREATED="1522736001654" MODIFIED="1522736006822"/>
</node>
<node TEXT="evaluate" ID="ID_1334563084" CREATED="1522736455335" MODIFIED="1522736495291"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      push operands as long as we have operands once we have operator pop 2 operands and run operation on them.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="resources" POSITION="left" ID="ID_89437070" CREATED="1522736133414" MODIFIED="1522736134946">
<edge COLOR="#ff00ff"/>
<node TEXT="Problem solving with algorithms and data structures" ID="ID_881837044" CREATED="1522736135305" MODIFIED="1522736166722"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      online concise python book
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="java" POSITION="right" ID="ID_1460961291" CREATED="1522739843146" MODIFIED="1522739844378">
<edge COLOR="#00ffff"/>
<node TEXT="concurrent" ID="ID_1259963423" CREATED="1522739845586" MODIFIED="1522739860278">
<node TEXT="delayed operation" ID="ID_1581463902" CREATED="1522739860618" MODIFIED="1522739928206"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```java
    </p>
    <p>
      Scheduler scheduler = Executors.newSingleThreadScheduledExecutor()
    </p>
    <p>
      scheduler.schedule(new Runnable() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;override def run(): Unit = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Some Code
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;}, 1, TimeUnit.SECONDS)
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="URLConnection" ID="ID_1643053678" CREATED="1522754294560" MODIFIED="1522754313083"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```java
    </p>
    <p>
      URL url = new URL(&quot;http://example.com&quot;);
    </p>
    <p>
      HttpURLConnection connection = (HttpURLConnection)url.openConnection();
    </p>
    <p>
      connection.setRequestMethod(&quot;GET&quot;);
    </p>
    <p>
      connection.connect();
    </p>
    <p>
      
    </p>
    <p>
      int code = connection.getResponseCode();
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</map>
