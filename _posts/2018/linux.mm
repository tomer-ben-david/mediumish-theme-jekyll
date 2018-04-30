<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="linux" FOLDED="false" ID="ID_1757515395" CREATED="1522559922902" MODIFIED="1522559927483" STYLE="oval">
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
<node TEXT="lsof" POSITION="right" ID="ID_199571122" CREATED="1522559927714" MODIFIED="1522559930853">
<edge COLOR="#ff0000"/>
<node TEXT="lsof -i :2551" ID="ID_1394879037" CREATED="1522559931441" MODIFIED="1522559938604"/>
</node>
<node TEXT="json" POSITION="left" ID="ID_740307307" CREATED="1522757559196" MODIFIED="1522757560439">
<edge COLOR="#0000ff"/>
<node TEXT="grep gron" ID="ID_851619644" CREATED="1522757560773" MODIFIED="1522757587285" LINK="https://github.com/tomnomnom/gron/"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      gron is grep for json!
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="introduction" POSITION="right" ID="ID_1168051305" CREATED="1523296402913" MODIFIED="1523296405100">
<edge COLOR="#00ff00"/>
<node TEXT="user" ID="ID_1051621876" CREATED="1523296405391" MODIFIED="1523296415947"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      user need to do things on computer
    </p>
  </body>
</html>
</richcontent>
<node TEXT="processes/shell" ID="ID_133017099" CREATED="1523296460804" MODIFIED="1523296844556">
<node TEXT="libraries" ID="ID_306105270" CREATED="1523296816884" MODIFIED="1523296819393">
<node TEXT="signals" ID="ID_1797960510" CREATED="1523296527072" MODIFIED="1523296529063">
<node TEXT="kernel" ID="ID_810293608" CREATED="1523296487529" MODIFIED="1523296506679">
<node TEXT="system space" ID="ID_1684613318" CREATED="1523296495131" MODIFIED="1523296497659"/>
</node>
</node>
<node TEXT="system calls" ID="ID_1751804324" CREATED="1523296529947" MODIFIED="1523296532098">
<node TEXT="kernel" ID="ID_269733010" CREATED="1523296540475" MODIFIED="1523296542878">
<node TEXT="drivers" ID="ID_1271105873" CREATED="1523296799268" MODIFIED="1523296802090">
<node TEXT="hardware" ID="ID_1024258850" CREATED="1523296802634" MODIFIED="1523296804278"/>
</node>
<node TEXT="networking" ID="ID_1167923816" CREATED="1523296858870" MODIFIED="1523296872641"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      networking is in the kernel its not with drivers
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="its user space" ID="ID_963939689" CREATED="1523296851696" MODIFIED="1523296853716"/>
</node>
<node TEXT="shell" ID="ID_1491703073" CREATED="1523296464565" MODIFIED="1523296472541"/>
</node>
</node>
<node TEXT="kernel" POSITION="left" ID="ID_1213992090" CREATED="1523296898580" MODIFIED="1523296900294">
<edge COLOR="#ff00ff"/>
<node TEXT="hardware" ID="ID_1555156217" CREATED="1523296908176" MODIFIED="1523296909935">
<node TEXT="cpu" ID="ID_21250935" CREATED="1523296925068" MODIFIED="1523296926486">
<node TEXT="ram" ID="ID_1908771086" CREATED="1523296926908" MODIFIED="1523296927734"/>
<node TEXT="storage" ID="ID_426725660" CREATED="1523296934721" MODIFIED="1523297065270">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_623520609" STARTINCLINATION="40;0;" ENDINCLINATION="40;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
<node TEXT="networking" ID="ID_623520609" CREATED="1523296958069" MODIFIED="1523296959596"/>
</node>
</node>
<node TEXT="memory management" ID="ID_1322074624" CREATED="1523297011281" MODIFIED="1523297028901">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1908771086" STARTINCLINATION="61;0;" ENDINCLINATION="61;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
<node TEXT="scheduling" ID="ID_446410989" CREATED="1523297038679" MODIFIED="1523297044310">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_21250935" STARTINCLINATION="68;0;" ENDINCLINATION="68;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
<node TEXT="drivers" ID="ID_1453125567" CREATED="1523297054444" MODIFIED="1523297065267">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_623520609" STARTINCLINATION="165;0;" ENDINCLINATION="165;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
<node TEXT="system calls" ID="ID_1356218774" CREATED="1523297084405" MODIFIED="1523297099877">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1213992090" STARTINCLINATION="116;0;" ENDINCLINATION="116;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
</node>
<node TEXT="ssh" POSITION="right" ID="ID_383503506" CREATED="1523721202120" MODIFIED="1523721203107">
<edge COLOR="#00ffff"/>
<node TEXT="proxy" ID="ID_1617207176" CREATED="1523721203305" MODIFIED="1523721234206"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      ssh -i &lt;pemfile&gt; -ND &lt;port&gt; hadoop@publicdns # =&gt; you can then http://localhost:&lt;port&gt;
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
