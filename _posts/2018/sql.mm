<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="SQL" FOLDED="false" ID="ID_1947915457" CREATED="1522384585521" MODIFIED="1522384590954" STYLE="oval">
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
<hook NAME="AutomaticEdgeColor" COUNTER="10" RULE="ON_BRANCH_CREATION"/>
<node TEXT="select" POSITION="right" ID="ID_1069539078" CREATED="1522384705556" MODIFIED="1522384707292">
<edge COLOR="#ff0000"/>
<node TEXT="alias" ID="ID_1710722073" CREATED="1522384707532" MODIFIED="1522384712088"/>
</node>
<node TEXT="FROM" POSITION="left" ID="ID_903471872" CREATED="1522384775987" MODIFIED="1522384778158">
<edge COLOR="#0000ff"/>
<node TEXT="alias" ID="ID_1463342185" CREATED="1522384778638" MODIFIED="1522384779782">
<node TEXT="SELECT * FROM payment p" ID="ID_1618221395" CREATED="1522384712383" MODIFIED="1523634176629">
<font SIZE="8"/>
</node>
</node>
</node>
<node TEXT="aggregation" POSITION="right" ID="ID_801567949" CREATED="1522385426476" MODIFIED="1522385429420">
<edge COLOR="#00ff00"/>
<node TEXT="SELECT p.payment, COUNT(*)&#xa;FROM payment p&#xa;GROUP BY p.payment -- as we have  aggregated COUNT(*), non aggregated columns such as p.payment need to be aggregated by GROUP_BY" ID="ID_514487867" CREATED="1522385463197" MODIFIED="1523634111436">
<font SIZE="8"/>
<node TEXT="SELECT p.payment, COUNT(*) FROM payment p -- wont work, no aggergation for p.payment" ID="ID_20253498" CREATED="1522385429696" MODIFIED="1523634118758">
<font SIZE="8"/>
</node>
</node>
<node TEXT="HAVING" ID="ID_205512500" CREATED="1522513515342" MODIFIED="1522513530309"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      you cant use WHERE on aggregate colums
    </p>
  </body>
</html>
</richcontent>
<node TEXT="select COUNT(*) FROM X HAVING COUNT(*) = 1" ID="ID_1677738286" CREATED="1522513543557" MODIFIED="1523634123407">
<font SIZE="8"/>
</node>
</node>
</node>
<node TEXT="JOINS" POSITION="left" ID="ID_778190266" CREATED="1522513151925" MODIFIED="1522513156537">
<edge COLOR="#00ffff"/>
<node TEXT="JOIN = INNER JOIN" ID="ID_635387729" CREATED="1522512765227" MODIFIED="1522513159440">
<node TEXT="SELECT table1alias.field1, table2.field1 FROM table1 table1alias&#xa;JOIN table2&#xa;ON table1alias.date = table2.date" ID="ID_164411742" CREATED="1522512769351" MODIFIED="1524037079325"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      Note that you say **JOIN** and then you have to specify on which field to join so you use **ON**
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<font SIZE="8"/>
</node>
</node>
<node TEXT="LEFT JOIN" ID="ID_1068829124" CREATED="1522513065754" MODIFIED="1524036846433"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      Get all data from first query (left) even though you have empty cells on the right table. according to the **ON** condition.
    </p>
    <p>
      ```
    </p>
    <p>
      ```sql
    </p>
    <p>
      SELECT f.film_id, f.title, i.store_id
    </p>
    <p>
      FROM film f
    </p>
    <p>
      LEFT JOIN inventory i ON i.film_id = f.film_id;
    </p>
    <p>
      
    </p>
    <p>
      SELECT
    </p>
    <p>
      &#160;&#160;f.film_id, f.title,
    </p>
    <p>
      &#160;&#160;i.store_id,
    </p>
    <p>
      &#160;&#160;COUNT(distinct r.rental_id) as rentals
    </p>
    <p>
      FROM film f
    </p>
    <p>
      &#160;&#160;LEFT JOIN inventory i ON i.film_id = f.film_id;
    </p>
    <p>
      &#160;&#160;LEFT JOIN rental r ON r.inventory_id = i.inventory_id
    </p>
    <p>
      GROUP BY 1,2,3
    </p>
    <p>
      
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="left rules right can be null" ID="ID_669914998" CREATED="1522513089560" MODIFIED="1523634221447">
<font SIZE="8"/>
</node>
<node TEXT="1 left repeat :: n right" ID="ID_1811015201" CREATED="1522513379861" MODIFIED="1523634227530"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      each left table row will repeat for each of the right table which meats the condition on ON
    </p>
  </body>
</html>

</richcontent>
<font SIZE="8"/>
</node>
</node>
<node TEXT="SELF JOIN" ID="ID_283090886" CREATED="1524078464134" MODIFIED="1524078466845">
<node TEXT="SELECT, (SELECT)" FOLDED="true" ID="ID_897633645" CREATED="1524037116927" MODIFIED="1524116227616"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```sql
    </p>
    <p>
      -- SELECT fields, (SELECT fields fieldx == parent fields x) as subqueryfield
    </p>
    <p>
      
    </p>
    <p>
      SELECT r.customer_id, MIN(r.rental_id) as first_order_id,
    </p>
    <p>
      &#160;( SELECT r2.rental_date FROM rental r2 WHERE r2.rental_id = min(r.rental_id)) as first_rental_date
    </p>
    <p>
      FROM rental r
    </p>
    <p>
      GROUP BY r.customer_id;
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="always give tables name" ID="ID_1717543200" CREATED="1524077864856" MODIFIED="1524077868852"/>
</node>
</node>
<node TEXT="AND OR" ID="ID_1418536341" CREATED="1524125857250" MODIFIED="1524125873663"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      for further filtering you can just use AND OR inside the JOIN clause.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="resources" POSITION="right" ID="ID_1879999055" CREATED="1522513611954" MODIFIED="1522513613379">
<edge COLOR="#7c0000"/>
<node TEXT="safari sql course" ID="ID_563740497" CREATED="1522513614604" MODIFIED="1522513698574" LINK="https://www.safaribooksonline.com/library/view/sql-fundamentals-for/9781788471176"/>
</node>
<node TEXT="SUBQUERY" POSITION="left" ID="ID_1332582218" CREATED="1524117839437" MODIFIED="1524118719197">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      imagine sub queries as functions, you then treat their output as tables and query it.
    </p>
    <p>
      ```
    </p>
    <p>
      
    </p>
    <p>
      ```sql
    </p>
    <p>
      select * FROM
    </p>
    <p>
      (SELECT t.customer_id, COUNT(*) FROM (
    </p>
    <p>
      &#160;&#160;SELECT DISTINCT r.customer_id, s.store_id
    </p>
    <p>
      &#160;&#160;FROM rental r
    </p>
    <p>
      &#160;&#160;&#160;&#160;LEFT JOIN staff s ON s.staff_id = r.staff_id
    </p>
    <p>
      &#160;&#160;ORDER BY 1
    </p>
    <p>
      ) t
    </p>
    <p>
      
    </p>
    <p>
      GROUP BY 1) t2)
    </p>
    <p>
      
    </p>
    <p>
      WHERE t2.customer_id &lt; 10;
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="WITH" ID="ID_1157984315" CREATED="1524118770828" MODIFIED="1524118878749"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```sql
    </p>
    <p>
      -- instead of nesting subqueries you do this
    </p>
    <p>
      WITH t1 AS (SELECT * FROM sometable)
    </p>
    <p>
      select * from t1;
    </p>
    <p>
      
    </p>
    <p>
      -- you can do everything with these tables, join, ...
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="intuition" POSITION="right" ID="ID_991569059" CREATED="1524118926973" MODIFIED="1524118962889">
<edge COLOR="#007c7c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      1. Can I write a simpler query that gives me some kind of the data.&#160; Yes? it's your subquery use it with WITH.
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</map>
