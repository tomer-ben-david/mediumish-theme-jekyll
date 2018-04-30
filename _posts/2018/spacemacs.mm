<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="spacemacs" FOLDED="false" ID="ID_1175336866" CREATED="1524146610258" MODIFIED="1524146621229" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false" show_note_icons="true"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="11" RULE="ON_BRANCH_CREATION"/>
<node TEXT="beginning" POSITION="right" ID="ID_587325738" CREATED="1524146710325" MODIFIED="1524146723990">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://github.com/syl20bnr/spacemacs/blob/master/doc/BEGINNERS_TUTORIAL.org#org-mode
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="editor" POSITION="left" ID="ID_640171593" CREATED="1524149345287" MODIFIED="1524149375003">
<edge COLOR="#0000ff"/>
<node TEXT="ESC :qa!" ID="ID_39333764" CREATED="1524149351196" MODIFIED="1524149374151">
<node TEXT="exit not save" ID="ID_1318347792" CREATED="1524149356961" MODIFIED="1524149361294"/>
</node>
<node TEXT="ESC :wqa" ID="ID_518197623" CREATED="1524149362594" MODIFIED="1524149375001">
<node TEXT="exit and save" ID="ID_150055384" CREATED="1524149374561" MODIFIED="1524149376592"/>
</node>
</node>
<node TEXT="tutorial" POSITION="right" ID="ID_1449063229" CREATED="1524149403820" MODIFIED="1524149407481">
<edge COLOR="#00ff00"/>
<node TEXT=" M-x evil-tutor-start" ID="ID_636632537" CREATED="1524149408779" MODIFIED="1524149553580"/>
</node>
<node TEXT="buffer" POSITION="right" ID="ID_109517809" CREATED="1524149725715" MODIFIED="1524149727064">
<edge COLOR="#00007c"/>
<node TEXT="SPC f b" ID="ID_1035127469" CREATED="1524149629152" MODIFIED="1524149730602">
<node TEXT="start scratch buffer" ID="ID_891685123" CREATED="1524149645843" MODIFIED="1524149654357"/>
</node>
<node TEXT="SPC w d" ID="ID_867031585" CREATED="1524149716461" MODIFIED="1524149734325">
<node TEXT="remove buffer" ID="ID_812464392" CREATED="1524149721710" MODIFIED="1524149723544"/>
</node>
<node TEXT="SPC b b" ID="ID_1307410149" CREATED="1524149788778" MODIFIED="1524149790683">
<node TEXT="search buffers" ID="ID_350908763" CREATED="1524149790925" MODIFIED="1524149793200"/>
</node>
</node>
<node TEXT="files" POSITION="left" ID="ID_89289281" CREATED="1524149826673" MODIFIED="1524149827787">
<edge COLOR="#007c00"/>
<node TEXT="SPC f" ID="ID_1763204547" CREATED="1524149827988" MODIFIED="1524149829393"/>
<node TEXT="SPC f f" ID="ID_1687999462" CREATED="1524149915703" MODIFIED="1524149917896">
<node TEXT="search files" ID="ID_1118177942" CREATED="1524149918265" MODIFIED="1524149919808"/>
</node>
<node TEXT="SPC f r" ID="ID_1930555165" CREATED="1524150026660" MODIFIED="1524150028439">
<node TEXT="recent files" ID="ID_530797492" CREATED="1524150028656" MODIFIED="1524150030267"/>
</node>
<node TEXT="SPC f s" ID="ID_373339455" CREATED="1524150042221" MODIFIED="1524150047308">
<node TEXT="save file" ID="ID_804938774" CREATED="1524150047571" MODIFIED="1524150048798"/>
</node>
</node>
<node TEXT="Navigation" POSITION="right" ID="ID_528709029" CREATED="1524150108408" MODIFIED="1524150110909">
<edge COLOR="#7c007c"/>
<node TEXT="SPC TAB" ID="ID_586989571" CREATED="1524150111467" MODIFIED="1524150115233"/>
<node TEXT="SPC w /" ID="ID_1785461102" CREATED="1524149554295" MODIFIED="1524150177028">
<node TEXT="split vertial window" ID="ID_1655538107" CREATED="1524149559636" MODIFIED="1524149564949"/>
<node TEXT="SPC 2" ID="ID_351497892" CREATED="1524150179334" MODIFIED="1524150180884">
<node TEXT="move to window 2" ID="ID_1048903478" CREATED="1524150181703" MODIFIED="1524150183855"/>
</node>
</node>
</node>
<node TEXT="orgmode" POSITION="left" ID="ID_1353376886" CREATED="1524151026381" MODIFIED="1524151027581">
<edge COLOR="#007c7c"/>
<node TEXT="TAB or S-TAB" ID="ID_1372041285" CREATED="1524151027877" MODIFIED="1524151033629">
<node TEXT="fold" ID="ID_282805156" CREATED="1524151033876" MODIFIED="1524151036860"/>
</node>
<node TEXT="**" ID="ID_85703556" CREATED="1524152035702" MODIFIED="1524152036925">
<node TEXT="subitems" ID="ID_1418351636" CREATED="1524152040067" MODIFIED="1524152045290"/>
</node>
<node TEXT="M-UP/DOWN" ID="ID_192549901" CREATED="1524151038276" MODIFIED="1524151059145">
<node TEXT="reorder" ID="ID_863461953" CREATED="1524151059509" MODIFIED="1524152019154"/>
</node>
<node TEXT="C-RET" ID="ID_1889585310" CREATED="1524151958191" MODIFIED="1524151966184">
<node TEXT="create another item" ID="ID_966786823" CREATED="1524151966528" MODIFIED="1524151970972"/>
</node>
<node TEXT="C-x C-s" ID="ID_838716046" CREATED="1524151110991" MODIFIED="1524151116409">
<node TEXT="save file" ID="ID_825403065" CREATED="1524151116648" MODIFIED="1524151117992"/>
</node>
<node TEXT="S-RIGHT/LEFT" ID="ID_409116669" CREATED="1524151207578" MODIFIED="1524151213563">
<node TEXT="todo status" ID="ID_161111701" CREATED="1524151213839" MODIFIED="1524151216311"/>
</node>
<node TEXT="guide" ID="ID_1772158870" CREATED="1524151227746" MODIFIED="1524152155721"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://www.youtube.com/watch?v=SzA2YODtgK4
    </p>
    <p>
      https://orgmode.org/worg/org-tutorials/org4beginners.html
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="markup" ID="ID_501724559" CREATED="1524152089171" MODIFIED="1524152090785">
<node TEXT="*bold*" ID="ID_898695009" CREATED="1524152081860" MODIFIED="1524152084115"/>
<node TEXT="/italic/" ID="ID_1441802845" CREATED="1524152085101" MODIFIED="1524152087496"/>
<node TEXT="C-c C-l" ID="ID_863430734" CREATED="1524152235066" MODIFIED="1524152241724">
<node TEXT="clickable links" ID="ID_840155418" CREATED="1524152242104" MODIFIED="1524152247283"/>
</node>
</node>
</node>
<node TEXT="Basics" POSITION="left" ID="ID_1217123" CREATED="1524151065360" MODIFIED="1524151067570">
<edge COLOR="#7c7c00"/>
<node TEXT="C" ID="ID_1794845529" CREATED="1524151068111" MODIFIED="1524151069231">
<node TEXT="command" ID="ID_80067004" CREATED="1524151070058" MODIFIED="1524151072642"/>
</node>
<node TEXT="M" ID="ID_696302652" CREATED="1524151073997" MODIFIED="1524151075982">
<node TEXT="ALT" ID="ID_930104702" CREATED="1524151076317" MODIFIED="1524151077543"/>
</node>
<node TEXT="S" ID="ID_1496720209" CREATED="1524151078442" MODIFIED="1524151079158">
<node TEXT="SHIFT" ID="ID_695269812" CREATED="1524151080542" MODIFIED="1524151081641"/>
</node>
</node>
</node>
</map>
