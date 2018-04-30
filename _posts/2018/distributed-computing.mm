<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Distributed Computing" FOLDED="false" ID="ID_1706934381" CREATED="1522751312618" MODIFIED="1522751318921" STYLE="oval">
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
<hook NAME="AutomaticEdgeColor" COUNTER="2" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Databases" POSITION="right" ID="ID_1823036266" CREATED="1522751330327" MODIFIED="1522751332063">
<edge COLOR="#ff0000"/>
<node TEXT="Couchbase" ID="ID_804320253" CREATED="1522751332446" MODIFIED="1523012945746">
<node TEXT="write consistency" ID="ID_1562581154" CREATED="1522751335589" MODIFIED="1522751337848">
<node TEXT="Success once in primary bucket" ID="ID_1023562088" CREATED="1522751340686" MODIFIED="1523012977387"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      I think that means that if we contact CB for write nad it immediately crashes after write to memory we might loose this data would not be replicated.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="sync to replicated async" ID="ID_348512925" CREATED="1522751350262" MODIFIED="1522751354894"/>
<node TEXT="client always contacts primary" ID="ID_1174127712" CREATED="1522751355645" MODIFIED="1522751363000"/>
<node TEXT="primary" ID="ID_1051692329" CREATED="1522751498472" MODIFIED="1522751507682"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      reads and writes go to primary shards.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="ElasticSearch" ID="ID_717476854" CREATED="1522751395011" MODIFIED="1523012952839">
<node TEXT="write consistency" ID="ID_1251178971" CREATED="1522751396390" MODIFIED="1522751748621"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://www.elastic.co/guide/en/elasticsearch/guide/1.x/distrib-write.html
    </p>
  </body>
</html>
</richcontent>
<node TEXT="write replicated sync to replicas" ID="ID_825106810" CREATED="1522751400454" MODIFIED="1522751407655">
<node TEXT="only then returns success" ID="ID_699917993" CREATED="1522751408462" MODIFIED="1522751411855"/>
</node>
<node TEXT="can toggle sync flag to async" ID="ID_1142575678" CREATED="1522751413782" MODIFIED="1522751429047"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      would then return to client after written to first node.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="primary" ID="ID_1310293914" CREATED="1522751508688" MODIFIED="1522751549078"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      reads and writes go to primary shard.&#160; https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-replication.html
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="postgres" ID="ID_675638772" CREATED="1524044205912" MODIFIED="1524044207537">
<node TEXT="practice online" FOLDED="true" ID="ID_1242407804" CREATED="1524044303587" MODIFIED="1524115553958"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      ```markdown
    </p>
    <p>
      https://labs.play-with-docker.com
    </p>
    <p>
      
    </p>
    <p>
      # Use postgres/example user/password credentials
    </p>
    <p>
      
    </p>
    <p>
      ```
    </p>
    <p>
      
    </p>
    <p>
      Then import ehe below dvdrentals database:
    </p>
    <p>
      
    </p>
    <p>
      ```bash
    </p>
    <p>
      cat &lt;&lt;-EOT &gt;&gt; docker-compose.yaml
    </p>
    <p>
      version: '3.1'
    </p>
    <p>
      
    </p>
    <p>
      services:
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;db:
    </p>
    <p>
      &#160;&#160;&#160;&#160;image: postgres
    </p>
    <p>
      &#160;&#160;&#160;&#160;restart: always
    </p>
    <p>
      &#160;&#160;&#160;&#160;environment:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;POSTGRES_PASSWORD: example
    </p>
    <p>
      &#160;&#160;&#160;&#160;volumes:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;- $PWD:/home/data
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;adminer:
    </p>
    <p>
      &#160;&#160;&#160;&#160;image: adminer
    </p>
    <p>
      &#160;&#160;&#160;&#160;restart: always
    </p>
    <p>
      &#160;&#160;&#160;&#160;ports:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;- 8080:8080
    </p>
    <p>
      EOT
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      wget http://www.postgresqltutorial.com/wp-content/uploads/2017/10/dvdrental.zip
    </p>
    <p>
      unzip dvdrental.zip
    </p>
    <p>
      tar xvf dvdrental.tar
    </p>
    <p>
      docker-compose up &amp;
    </p>
    <p>
      sleep 10
    </p>
    <p>
      docker exec -it root_db_1 ls /home/data # root_db_1 is from `docker ps`
    </p>
    <p>
      docker exec -it root_db_1 psql --username=postgres
    </p>
    <p>
      CREATE DATABASE dvdrental;
    </p>
    <p>
      \l
    </p>
    <p>
      \q
    </p>
    <p>
      
    </p>
    <p>
      docker exec -it root_db_1 pg_restore -U postgres -d dvdrental /home/data/dvdrental.tar
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="credentials" ID="ID_1336220725" CREATED="1524044227541" MODIFIED="1524044236286"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      postgres/example
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
