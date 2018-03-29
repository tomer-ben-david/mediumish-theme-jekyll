<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Security" FOLDED="false" ID="ID_1188426456" CREATED="1521798543075" MODIFIED="1521798548539" STYLE="oval">
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
<hook NAME="AutomaticEdgeColor" COUNTER="6" RULE="ON_BRANCH_CREATION"/>
<hook NAME="presentations">
    <presentation NAME="New presentation 1">
        <slide NAME="New slide 1"/>
    </presentation>
</hook>
<node TEXT="Basic" POSITION="right" ID="ID_1712387241" CREATED="1521798558077" MODIFIED="1521798561745">
<edge COLOR="#00ff00"/>
<node TEXT="Authorization: Basic Base64(user,pass)" ID="ID_1417872357" CREATED="1521798647030" MODIFIED="1521804791010">
<node TEXT="cleartext use https for encryption" LOCALIZED_STYLE_REF="defaultstyle.note" ID="ID_1889852296" CREATED="1521798675159" MODIFIED="1521805002112"/>
</node>
</node>
<node TEXT="SAML" POSITION="right" ID="ID_435427962" CREATED="1521798549016" MODIFIED="1521798550944">
<edge COLOR="#ff0000"/>
<node TEXT="Authentication and Authorization" ID="ID_232251758" CREATED="1521798912702" MODIFIED="1521798922951"/>
<node TEXT="XML" ID="ID_481214290" CREATED="1521798905967" MODIFIED="1521798907108"/>
<node TEXT="Parties" ID="ID_1536369800" CREATED="1521799064763" MODIFIED="1521799066204">
<node TEXT="Service provider" ID="ID_473544859" CREATED="1521799053763" MODIFIED="1521799061517"/>
<node TEXT="Identity provider" LOCALIZED_STYLE_REF="defaultstyle.details" ID="ID_1467783301" CREATED="1521799073086" MODIFIED="1521812402410"><richcontent TYPE="NOTE">

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
      
    </p>
    <p>
      git config --global # =&gt; ~/.gitconfig or ~/.config/git/config
    </p>
    <p>
      
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
</node>
</node>
<node TEXT="Provides Standard SSO" ID="ID_1196888693" CREATED="1521799095732" MODIFIED="1521799102711">
<node TEXT="Authentication exchanged with digitally signed XML" ID="ID_1050738871" CREATED="1521799111374" MODIFIED="1521799130045"/>
<node TEXT="Complex" ID="ID_651784384" CREATED="1521799138701" MODIFIED="1521799140224"/>
</node>
</node>
<node TEXT="OAuth 2.0" POSITION="left" ID="ID_1323129450" CREATED="1521798552648" MODIFIED="1521798556768">
<edge COLOR="#0000ff"/>
<node TEXT="Authorization" ID="ID_558571511" CREATED="1521799159326" MODIFIED="1521799161461"/>
<node TEXT="HTTP" ID="ID_292264039" CREATED="1521799168788" MODIFIED="1521799170064"/>
<node TEXT="Tokens instead of credentials" ID="ID_1287967445" CREATED="1521799182167" MODIFIED="1521799189495"/>
<node TEXT="Change from 1.0 no need to sign each call with keyed hash" ID="ID_1535830092" CREATED="1521799262811" MODIFIED="1521799273325"/>
<node TEXT="access token andor refresh token" ID="ID_1790256917" CREATED="1521799293692" MODIFIED="1521799314860">
<node TEXT="getAccessToken(refreshToken)" ID="ID_431200191" CREATED="1521799333397" MODIFIED="1521799343073"/>
</node>
<node TEXT="Authorization: Bearer &lt;access token&gt;" ID="ID_11649262" CREATED="1521799356048" MODIFIED="1521799367026"/>
<node TEXT="JWT" ID="ID_296029072" CREATED="1521798613695" MODIFIED="1521802162090">
<node TEXT="Extension of OAuth 2.0" ID="ID_581699392" CREATED="1521802179242" MODIFIED="1521802194706">
<node TEXT="access token with claims" ID="ID_70049385" CREATED="1521802195369" MODIFIED="1521802200937"/>
<node TEXT="Authorization: Bearer &lt;JWT&gt;" ID="ID_691236616" CREATED="1521802213307" MODIFIED="1521802218885">
<node TEXT="header, payload, signature" ID="ID_1147067082" CREATED="1521802233365" MODIFIED="1521802237600"/>
</node>
<node TEXT="HMAC-SHA256" ID="ID_1416717681" CREATED="1521802273801" MODIFIED="1521802282076">
<node TEXT="hash with secret key to compute signature" ID="ID_317345740" CREATED="1521802282374" MODIFIED="1521802299474"/>
</node>
</node>
<node TEXT="Stateless data api data repassed from client" ID="ID_859576747" CREATED="1521802350718" MODIFIED="1521802372015">
<node TEXT="instead of traditional session on server" ID="ID_682887574" CREATED="1521802440171" MODIFIED="1521802446803"/>
</node>
<node TEXT="Usage" ID="ID_916340211" CREATED="1521802388767" MODIFIED="1521802390018">
<node TEXT="Authentication" ID="ID_1042169253" CREATED="1521802390390" MODIFIED="1521802393610"/>
<node TEXT="Secure information exchange" ID="ID_1328876543" CREATED="1521802394775" MODIFIED="1521802404094">
<node TEXT="signed with public/private keys verify content was not tampered" ID="ID_1897300858" CREATED="1521802404527" MODIFIED="1521802429602"/>
</node>
</node>
</node>
</node>
<node TEXT="API Keys" POSITION="right" ID="ID_1761925263" CREATED="1521798847902" MODIFIED="1521798849907">
<edge COLOR="#00ffff"/>
<node TEXT="identify caller/application" ID="ID_618916606" CREATED="1521798864030" MODIFIED="1521798874086"/>
<node TEXT="monetize api" LOCALIZED_STYLE_REF="default" FOLDED="true" ID="ID_1401152652" CREATED="1521798890579" MODIFIED="1521811282694">
<node TEXT="jkhjkhjkhkjhkhkhjkhkj&#xa;sdkjfslkfjklsdjfkls&#xa;skdjhfskjfhkjshfdkjs&#xa;sakdjfhskjdfhkjsdhf" LOCALIZED_STYLE_REF="defaultstyle.details" ID="ID_177932329" CREATED="1521811097163" MODIFIED="1521811157747" HGAP_QUANTITY="-45.999998211860714 pt" VSHIFT_QUANTITY="41.24999877065424 pt"/>
</node>
</node>
<node TEXT="Resources" POSITION="left" ID="ID_535890336" CREATED="1521802246610" MODIFIED="1521802249735">
<edge COLOR="#7c0000"/>
<node TEXT="dzone rest security refcardz" ID="ID_354057718" CREATED="1521802250831" MODIFIED="1521802258109"/>
</node>
</node>
</map>
