<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Int" FOLDED="false" ID="ID_222677983" CREATED="1521894973387" MODIFIED="1524319935161" STYLE="oval">
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
<hook NAME="AutomaticEdgeColor" COUNTER="8" RULE="ON_BRANCH_CREATION"/>
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
<node TEXT="Problem solving with algorithms and data structures" ID="ID_881837044" CREATED="1522736135305" MODIFIED="1524293577818"><richcontent TYPE="NOTE">

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
<node TEXT="gc" ID="ID_1054430563" CREATED="1524129085979" MODIFIED="1524302061261">
<icon BUILTIN="button_ok"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      ![gcgenerations](https://tinyurl.com/gcyoungold)
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="young" ID="ID_1495603549" CREATED="1524129089721" MODIFIED="1524129170715"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Moving them back and forth between s0 and s1.&#160;&#160;Also known as from and to space.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="eden" ID="ID_4329820" CREATED="1524129092223" MODIFIED="1524131642715"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      1. Most objects die here.
    </p>
    <p>
      1. When eden is full we have minor GC which copies to s0 or s1 in addition in minor gc objects are moved from s1 to s0 and back.
    </p>
    <p>
      1. Move objects to survivor (s0).
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="TLAB&apos;s" ID="ID_1118311160" CREATED="1524129674039" MODIFIED="1524129707948"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      each thread has it's own space to allocate data so eden is split and each thread has it's own space.
    </p>
    <p>
      ![eden tlabs](http://i.umumble.com/img/topic-1-1506586679.png)
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="survivor" ID="ID_1555781113" CREATED="1524129094380" MODIFIED="1524131950853"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ALL objects from s0 are movbed to s1 on minor gc, all objects from s1 are moved to s0 on minor gc.&#160;&#160;At any point in time only s0 or s1 has objects.&#160;&#160;The other one is empty.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="from survivor" ID="ID_625843189" CREATED="1524129216700" MODIFIED="1524131546226"/>
<node TEXT="to survivor" ID="ID_73908692" CREATED="1524129218241" MODIFIED="1524131550756"/>
</node>
</node>
<node TEXT="old" ID="ID_1073518436" CREATED="1524129311725" MODIFIED="1524131726335"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      moving to here from survivor after a couple of minor gc are moved here to old.&#160;&#160;Here we have the full GC. We try to have objects not arrive to old so that they won't have full gc.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Permanent" ID="ID_784324512" CREATED="1524131558492" MODIFIED="1524131593792"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      VM Meta classes.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="resources" ID="ID_1540487494" CREATED="1524129099234" MODIFIED="1524129118203"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://www.safaribooksonline.com/library/view/advanced-java-performance/9780134653273/ajph_01_01.html?autoStart=True
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="tools" ID="ID_606875773" CREATED="1524131781585" MODIFIED="1524131782945">
<node TEXT="visualvm" ID="ID_1748322513" CREATED="1524131783374" MODIFIED="1524131785434">
<node TEXT="visualgc plugin" ID="ID_1294667170" CREATED="1524131785685" MODIFIED="1524131789025"/>
</node>
</node>
</node>
<node TEXT="performance troubleshooting" ID="ID_384723701" CREATED="1524142958211" MODIFIED="1524142967819">
<node TEXT="measure" ID="ID_1419947109" CREATED="1524142968339" MODIFIED="1524319940414">
<icon BUILTIN="button_ok"/>
<node TEXT="cpu" ID="ID_401868002" CREATED="1524142970727" MODIFIED="1524319946351">
<node TEXT="user cpu" ID="ID_809730171" CREATED="1524142979876" MODIFIED="1524143068754"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      you want: linear relation: increase load on system and increased user cpu.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="system cpu" ID="ID_233395514" CREATED="1524142982211" MODIFIED="1524142990903"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      also known as kernel cpu.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="reduce" ID="ID_1295388967" CREATED="1524143020851" MODIFIED="1524143034038"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      time spent on system cpu is time we don't have on user cpu
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="idle time" ID="ID_1645470484" CREATED="1524142997820" MODIFIED="1524142999422"/>
</node>
<node TEXT="virtual memory" ID="ID_1117238245" CREATED="1524143076455" MODIFIED="1524319949485"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      if your heap memory is in virtual memory gc would be very slow and gc pauses will take long time
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="process" ID="ID_56589904" CREATED="1524143124949" MODIFIED="1524319952572">
<node TEXT="context switching" ID="ID_892469705" CREATED="1524143126284" MODIFIED="1524143209658"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      high voluntary context swiching can be an indication of waiting for locks, io, contention on locks and io.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="voluntary" ID="ID_1677714941" CREATED="1524143172872" MODIFIED="1524143174687"/>
<node TEXT="involuntary" ID="ID_756021734" CREATED="1524143175270" MODIFIED="1524143237452"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      more threads than can run.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="scheduling queue" ID="ID_1467673411" CREATED="1524143262887" MODIFIED="1524143308769"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      goes together with involuntary context switching we have more threads than can be handled.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="resources" ID="ID_1673949877" CREATED="1524143322546" MODIFIED="1524143326637"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://www.safaribooksonline.com/library/view/java-performance-livelessons
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="softskills" POSITION="left" ID="ID_1730404508" CREATED="1523344868170" MODIFIED="1523344870446">
<edge COLOR="#7c0000"/>
<node TEXT="meetings" ID="ID_199574575" CREATED="1523344870704" MODIFIED="1523344871692">
<node TEXT="end" ID="ID_971726602" CREATED="1523344872840" MODIFIED="1523344902586"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      you already konw how you want the meeting to end, before meeting and during meeting you should stick as fast as possible to how the meeting should and and put your voice.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="math" POSITION="right" ID="ID_1421960803" CREATED="1523597887311" MODIFIED="1524129116253">
<edge COLOR="#00007c"/>
<node TEXT="mod" ID="ID_1026383891" CREATED="1523597888536" MODIFIED="1523597908045"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      only the reminder so 2 % 3 is 1 and 4 % 3 is 1
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="WORK" POSITION="left" ID="ID_1598376377" CREATED="1524148108280" MODIFIED="1524148109793">
<edge COLOR="#007c00"/>
<node TEXT="amazon" ID="ID_1243618196" CREATED="1524148109977" MODIFIED="1524148111223">
<node TEXT="machine learning" ID="ID_1351953401" CREATED="1524148114764" MODIFIED="1524148118477">
<node TEXT="models lifecycle" ID="ID_986965634" CREATED="1524148119064" MODIFIED="1524148135975"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      release process from data scientists to production
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="measure effectiveness" ID="ID_558415060" CREATED="1524148136577" MODIFIED="1524148149053"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      effectiveness of models are they good?
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="TR" ID="ID_115295623" CREATED="1524148112051" MODIFIED="1524148112917"/>
</node>
</node>
</map>
