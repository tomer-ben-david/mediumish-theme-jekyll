<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Machine Learning" FOLDED="false" ID="ID_1044113325" CREATED="1521813972653" MODIFIED="1521813980150" STYLE="oval">
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
<node TEXT="data" POSITION="right" ID="ID_1580962771" CREATED="1521814074501" MODIFIED="1521814092945">
<edge COLOR="#ff0000"/>
<node TEXT="spreadsheet" ID="ID_784430210" CREATED="1521814078005" MODIFIED="1521814109603"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Think of data as a spreadsheet as a table.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Matrix" ID="ID_893609976" CREATED="1521826523147" MODIFIED="1521826546958"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      rows: observations, our datadata. columns - features.&#160;&#160;Get used to it.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="sparse matrix" ID="ID_1427982606" CREATED="1521831541369" MODIFIED="1521831569709"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      matrix who's most rows are zeros
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="learning" POSITION="left" ID="ID_1751015964" CREATED="1521814118874" MODIFIED="1521814120358">
<edge COLOR="#0000ff"/>
<node TEXT="types" ID="ID_1438950205" CREATED="1521814194083" MODIFIED="1521814195494">
<node TEXT="statistical" ID="ID_903249803" CREATED="1521814121213" MODIFIED="1521814145517"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Output = f(input) # =&gt; f(inputVariable) or f(inputVector), or f(independent variables) or Y = F(X) // X1,X2,..
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="programming" ID="ID_943717202" CREATED="1521814154074" MODIFIED="1521814163666"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      OutputAttributes = Program(InputAttributes) or Program(InputFeatures) or Model = Algorithm(Data)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="parametric" ID="ID_1080829433" CREATED="1521814226137" MODIFIED="1521814254944"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      No matter how much data you throw on it, it will still need these parameters like a line `Y = ax + b` (logistic regression, linear discriminant analysis, perceptron)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="non parametric" ID="ID_1962434970" CREATED="1521814263340" MODIFIED="1521814275246"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      No matter how much data you throw on it, it will still need these parameters like a line Y = ax + b (logistic regression, linear discriminant analysis, perceptron)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="supervised" ID="ID_1682849311" CREATED="1521819076479" MODIFIED="1521819090474"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      You have a teacher he knows the answer, classification, regression
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="unsupervised" ID="ID_678066697" CREATED="1521826338704" MODIFIED="1521826354486"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      No teacher, clustering, association
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Semi supervised" ID="ID_889779785" CREATED="1521826363733" MODIFIED="1521826383346"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Some can be with a teacher
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Classification vs Regression" ID="ID_1734599570" CREATED="1521831570893" MODIFIED="1521831587110"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      classification(input) =&gt; spam/notspam (categorical)&lt;br /&gt;regression(input) =&gt; bitcoin price (continous outcome)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Errors" ID="ID_1934964382" CREATED="1521826389535" MODIFIED="1521826391614">
<node TEXT="error Y=f(x) + e" ID="ID_469773231" CREATED="1521814172228" MODIFIED="1521814191791"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Y = f(X) + e # =&gt; You learn a function!
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Bias Variance" ID="ID_867447832" CREATED="1521826396504" MODIFIED="1521826410969"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Bias Error (model assumptions), Variance Error, Irreducable Error. Increasing bias error reduce variance, increase variance will decrease bias
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Overfitting" ID="ID_1480403303" CREATED="1521826418921" MODIFIED="1521826430336"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Resampling to estimate model accuracy, Hold back validation dataset, Cross validation.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="map reduce" POSITION="right" ID="ID_1441397825" CREATED="1521814440305" MODIFIED="1521814782074">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      grep something | wc -l # =&gt; grep is map wc -l is the reduce!
    </p>
    <p>
      ```
    </p>
    <ol>
      <li>
        Based on simple [key, value] pair
      </li>
      <li>
        Moving computation is cheaper than moving data, our data is big ain't it?
      </li>
    </ol>
  </body>
</html>
</richcontent>
<node TEXT="map" ID="ID_366790116" CREATED="1521815162908" MODIFIED="1521999696943"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      List(input) =&gt; List(output) # =&gt; like grep
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="reduce" ID="ID_654046329" CREATED="1521815204094" MODIFIED="1521999703680"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      List(input) =&gt; Output(value) # =&gt; like wc -l
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="spark" POSITION="left" ID="ID_12932126" CREATED="1521819482787" MODIFIED="1521819486271">
<edge COLOR="#ff00ff"/>
<node TEXT="libraries" ID="ID_115886144" CREATED="1521825741647" MODIFIED="1521825743413">
<node TEXT="graphx" ID="ID_1442075497" CREATED="1521820149378" MODIFIED="1522515755214"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      has a library for computing graph computations (in addition to mlib).
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="operations" ID="ID_1401944910" CREATED="1521825748142" MODIFIED="1521825749827">
<node TEXT="transformations" ID="ID_75500658" CREATED="1521825750191" MODIFIED="1521825752524"/>
<node TEXT="actions" ID="ID_1364880233" CREATED="1521825753148" MODIFIED="1521825754411"/>
</node>
<node TEXT="data structures" ID="ID_1796300797" CREATED="1521825825350" MODIFIED="1521825827443">
<node TEXT="RDD" ID="ID_1993627552" CREATED="1521825827970" MODIFIED="1521825829027">
<node TEXT="blind data" ID="ID_706940231" CREATED="1521825829448" MODIFIED="1521825837264"/>
</node>
<node TEXT="DF" ID="ID_1475199406" CREATED="1521825842900" MODIFIED="1521830470005"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      dfs.replication: 1, dfs.namenode.name.dir: /var/data/hadoop/...
    </p>
  </body>
</html>
</richcontent>
<node TEXT="scheme" ID="ID_1287838538" CREATED="1521825846171" MODIFIED="1521825886125"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Think of it as distributed database table.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="read json element" ID="ID_439730399" CREATED="1523173749610" MODIFIED="1523173766180"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```scala
    </p>
    <p>
      object SparkDFOnlineJson extends App {
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;override def main(args: Array[String]): Unit = {
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;val jsonString = scala.io.Source.fromURL(&quot;https://min-api.cryptocompare.com/data/histoday?fsym=BTC&amp;tsym=ETH&amp;limit=30&amp;aggregate=1&amp;e=CCCAGG&quot;).mkString
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;val spark = org.apache.spark.sql.SparkSession.builder().appName(&quot;someapp&quot;).master(&quot;local[*]&quot;).getOrCreate()
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;import spark.implicits._
    </p>
    <p>
      &#160;&#160;&#160;&#160;import org.apache.spark.sql.functions._
    </p>
    <p>
      &#160;&#160;&#160;&#160;val df = spark.read.json(Seq(jsonString).toDS())
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;df.show()
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;df.take(10).foreach(println)
    </p>
    <p>
      &#160;&#160;&#160;&#160;df.printSchema()
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;df.select($&quot;Data.close&quot;.as(&quot;close_price&quot;)).show(2) // &lt;-- HERE reading Data.close from the json!
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;val jsonExplodedDF = df.select($&quot;Aggregated&quot;, $&quot;ConversionType&quot;, explode($&quot;Data&quot;).as(&quot;prices&quot;)) // &lt;-- HERE reading Data.close from the json!
    </p>
    <p>
      &#160;&#160;&#160;&#160;jsonExplodedDF.printSchema()
    </p>
    <p>
      &#160;&#160;&#160;&#160;jsonExplodedDF.select($&quot;Aggregated&quot;, $&quot;ConversionType&quot;, $&quot;prices&quot;.getItem(&quot;close&quot;)).show(10) // Then getItem instead of explode to objects!!
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      &#160;
    </p>
    <p>
      // +----------+--------------+--------------------+-----------------+--------+----------+----------+----+
    </p>
    <p>
      // |Aggregated|ConversionType|&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Data|FirstValueInArray|Response|&#160;&#160;TimeFrom|&#160;&#160;&#160;&#160;TimeTo|Type|
    </p>
    <p>
      // +----------+--------------+--------------------+-----------------+--------+----------+----------+----+
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|[[23.91,25.06,21....|&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;true| Success|1513209600|1515801600| 100|
    </p>
    <p>
      // +----------+--------------+--------------------+-----------------+--------+----------+----------+----+
    </p>
    <p>
      &#160;
    </p>
    <p>
      // [false,[,invert],WrappedArray([23.91,25.06,21.87,23.39,1513209600,62691.53,1452942.54], [25.87,29.03,23.88,23.91,1513296000,50825.4,1342967.63], [28.11,28.62,24.53,25.87,1513382400,38155.01,1013078.48], [26.72,28.11,25.93,28.11,1513468800,36242.76,979762.25], [24.08,26.86,23.29,26.72,1513555200,46712.69,1186390.62], [21.63,24.41,21.29,24.08,1513641600,65125.17,1449434.45], [20.67,22.29,20.42,21.63,1513728000,64539.45,1372742.27], [19.79,20.94,19.4,20.67,1513814400,61802.62,1244602.57], [20.93,21.98,19.47,19.79,1513900800,80230.91,1656134.49], [20.78,20.97,20.42,20.93,1513987200,42893.35,887428.82], [20.53,20.97,20.36,20.77,1514073600,41294.18,855012.67], [19.18,20.53,18.67,20.53,1514160000,48165.25,929653.57], [20.91,21.55,18.75,19.18,1514246400,46999.33,956924.92], [20.88,21.57,20.45,20.91,1514332800,36759.37,769083.49], [20.04,20.95,19.7,20.88,1514419200,40883.16,828193.82], [19.58,20.25,19.32,20.04,1514505600,43487.34,857520.42], [18.14,19.77,18.09,19.58,1514592000,66161.84,1246949.13], [18.68,19.07,18.05,18.14,1514678400,48718.02,902419.05], [17.76,18.7,17.54,18.67,1514764800,50703.72,910875.63], [17.16,18.94,15.25,17.76,1514851200,96092.61,1574640.02], [16.01,17.68,15.62,17.16,1514937600,75289.68,1266911.61], [16.06,16.59,14.43,16.03,1515024000,80755.25,1258516.2], [17.59,18.29,14.54,16.07,1515110400,104693.19,1682729.53], [17.03,17.91,16.25,17.59,1515196800,58014.94,975679.49], [14.49,17.06,14.47,17.03,1515283200,64620.79,994739.35], [13.2,14.5,12.73,14.49,1515369600,102880.99,1380565.72], [11.18,13.21,10.93,13.2,1515456000,95751.66,1168583.78], [11.95,12.06,10.16,11.18,1515542400,143351.13,1546032.52], [11.66,11.96,10.93,11.95,1515628800,97380.62,1100658.4], [10.96,11.8,10.89,11.66,1515715200,63382.56,710582.11], [10.27,11.12,10.24,10.96,1515801600,58214.24,625184.97]),true,Success,1513209600,1515801600,100]
    </p>
    <p>
      // root
    </p>
    <p>
      //&#160;&#160;|-- Aggregated: boolean (nullable = true)
    </p>
    <p>
      //&#160;&#160;|-- ConversionType: struct (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- conversionSymbol: string (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- type: string (nullable = true)
    </p>
    <p>
      //&#160;&#160;|-- Data: array (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- element: struct (containsNull = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;|-- close: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;|-- high: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;|-- low: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;|-- open: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;|-- time: long (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;|-- volumefrom: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|&#160;&#160;&#160;&#160;|-- volumeto: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|-- FirstValueInArray: boolean (nullable = true)
    </p>
    <p>
      //&#160;&#160;|-- Response: string (nullable = true)
    </p>
    <p>
      //&#160;&#160;|-- TimeFrom: long (nullable = true)
    </p>
    <p>
      //&#160;&#160;|-- TimeTo: long (nullable = true)
    </p>
    <p>
      //&#160;&#160;|-- Type: long (nullable = true)
    </p>
    <p>
      &#160;
    </p>
    <p>
      // +--------------------+
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;close_price|
    </p>
    <p>
      // +--------------------+
    </p>
    <p>
      // |[23.91, 25.87, 28...|
    </p>
    <p>
      // +--------------------+
    </p>
    <p>
      &#160;
    </p>
    <p>
      // root
    </p>
    <p>
      //&#160;&#160;|-- Aggregated: boolean (nullable = true)
    </p>
    <p>
      //&#160;&#160;|-- ConversionType: struct (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- conversionSymbol: string (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- type: string (nullable = true)
    </p>
    <p>
      //&#160;&#160;|-- prices: struct (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- close: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- high: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- low: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- open: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- time: long (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- volumefrom: double (nullable = true)
    </p>
    <p>
      //&#160;&#160;|&#160;&#160;&#160;&#160;|-- volumeto: double (nullable = true)
    </p>
    <p>
      &#160;
    </p>
    <p>
      // +----------+--------------+------------+
    </p>
    <p>
      // |Aggregated|ConversionType|prices.close|
    </p>
    <p>
      // +----------+--------------+------------+
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|&#160;&#160;&#160;&#160;&#160;&#160;&#160;23.91|
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|&#160;&#160;&#160;&#160;&#160;&#160;&#160;25.87|
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|&#160;&#160;&#160;&#160;&#160;&#160;&#160;28.11|
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|&#160;&#160;&#160;&#160;&#160;&#160;&#160;26.72|
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|&#160;&#160;&#160;&#160;&#160;&#160;&#160;24.08|
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|&#160;&#160;&#160;&#160;&#160;&#160;&#160;21.63|
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|&#160;&#160;&#160;&#160;&#160;&#160;&#160;20.67|
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|&#160;&#160;&#160;&#160;&#160;&#160;&#160;19.79|
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|&#160;&#160;&#160;&#160;&#160;&#160;&#160;20.93|
    </p>
    <p>
      // |&#160;&#160;&#160;&#160;&#160;false|&#160;&#160;&#160;&#160;&#160;[,invert]|&#160;&#160;&#160;&#160;&#160;&#160;&#160;20.78|
    </p>
    <p>
      // +----------+--------------+------------+
    </p>
    <p>
      // only showing top 10 rows
    </p>
    <p>
      &#160;
    </p>
    <p>
      // jsonString: String = {&quot;Response&quot;:&quot;Success&quot;,&quot;Type&quot;:100,&quot;Aggregated&quot;:false,&quot;Data&quot;:[{&quot;time&quot;:1513209600,&quot;high&quot;:25.06,&quot;low&quot;:21.87,&quot;open&quot;:23.39,&quot;volumefrom&quot;:62691.53,&quot;volumeto&quot;:1452942.54,&quot;close&quot;:23.91},{&quot;time&quot;:1513296000,&quot;high&quot;:29.03,&quot;low&quot;:23.88,&quot;open&quot;:23.91,&quot;volumefrom&quot;:50825.4,&quot;volumeto&quot;:1342967.63,&quot;close&quot;:25.87},{&quot;time&quot;:1513382400,&quot;high&quot;:28.62,&quot;low&quot;:24.53,&quot;open&quot;:25.87,&quot;volumefrom&quot;:38155.01,&quot;volumeto&quot;:1013078.48,&quot;close&quot;:28.11},{&quot;time&quot;:1513468800,&quot;high&quot;:28.11,&quot;low&quot;:25.93,&quot;open&quot;:28.11,&quot;volumefrom&quot;:36242.76,&quot;volumeto&quot;:979762.25,&quot;close&quot;:26.72},{&quot;time&quot;:1513555200,&quot;high&quot;:26.86,&quot;low&quot;:23.29,&quot;open&quot;:26.72,&quot;volumefrom&quot;:46712.69,&quot;volumeto&quot;:1186390.62,&quot;close&quot;:24.08},{&quot;time&quot;:1513641600,&quot;high&quot;:24.41,&quot;low&quot;:21.29,&quot;open&quot;:24.08,&quot;volumefrom&quot;:65125.17,&quot;volumeto&quot;:1449434.45,&quot;close&quot;:21.63},{&quot;time&quot;:1513728000,&quot;high&quot;:22.29,&quot;low&quot;:20.42,&quot;open&quot;:21.63,&quot;volumefrom&quot;:64539.45,&quot;volumeto&quot;:1372742.27,&quot;close&quot;:20.67},{&quot;time&quot;:1513814400,&quot;high&quot;:20.94,&quot;low&quot;:19.4,&quot;open&quot;:20.67,&quot;volumefrom&quot;:61802.62,&quot;volumeto&quot;:1244602.57,&quot;close&quot;:19.79},{&quot;time&quot;:1513900800,&quot;high&quot;:21.98,&quot;low&quot;:19.47,&quot;open&quot;:19.79,&quot;volumefrom&quot;:80230.91,&quot;volumeto&quot;:1656134.49,&quot;close&quot;:20.93},{&quot;time&quot;:1513987200,&quot;high&quot;:20.97,&quot;low&quot;:20.42,&quot;open&quot;:20.93,&quot;volumefrom&quot;:42893.35,&quot;volumeto&quot;:887428.82,&quot;close&quot;:20.78},{&quot;time&quot;:1514073600,&quot;high&quot;:20.97,&quot;low&quot;:20.36,&quot;open&quot;:20.77,&quot;volumefrom&quot;:41294.18,&quot;volumeto&quot;:855012.67,&quot;close&quot;:20.53},{&quot;time&quot;:1514160000,&quot;high&quot;:20.53,&quot;low&quot;:18.67,&quot;open&quot;:20.53,&quot;volumefrom&quot;:48165.25,&quot;volumeto&quot;:929653.57,&quot;close&quot;:19.18},{&quot;time&quot;:1514246400,&quot;high&quot;:21.55,&quot;low&quot;:18.75,&quot;open&quot;:19.18,&quot;volumefrom&quot;:46999.33,&quot;volumeto&quot;:956924.92,&quot;close&quot;:20.91},{&quot;time&quot;:1514332800,&quot;high&quot;:21.57,&quot;low&quot;:20.45,&quot;open&quot;:20.91,&quot;volumefrom&quot;:36759.37,&quot;volumeto&quot;:769083.49,&quot;close&quot;:20.88},{&quot;time&quot;:1514419200,&quot;high&quot;:20.95,&quot;low&quot;:19.7,&quot;open&quot;:20.88,&quot;volumefrom&quot;:40883.16,&quot;volumeto&quot;:828193.82,&quot;close&quot;:20.04},{&quot;time&quot;:1514505600,&quot;high&quot;:20.25,&quot;low&quot;:19.32,&quot;open&quot;:20.04,&quot;volumefrom&quot;:43487.34,&quot;volumeto&quot;:857520.42,&quot;close&quot;:19.58},{&quot;time&quot;:1514592000,&quot;high&quot;:19.77,&quot;low&quot;:18.09,&quot;open&quot;:19.58,&quot;volumefrom&quot;:66161.84,&quot;volumeto&quot;:1246949.13,&quot;close&quot;:18.14},{&quot;time&quot;:1514678400,&quot;high&quot;:19.07,&quot;low&quot;:18.05,&quot;open&quot;:18.14,&quot;volumefrom&quot;:48718.02,&quot;volumeto&quot;:902419.05,&quot;close&quot;:18.68},{&quot;time&quot;:1514764800,&quot;high&quot;:18.7,&quot;low&quot;:17.54,&quot;open&quot;:18.67,&quot;volumefrom&quot;:50703.72,&quot;volumeto&quot;:910875.63,&quot;close&quot;:17.76},{&quot;time&quot;:1514851200,&quot;high&quot;:18.94,&quot;low&quot;:15.25,&quot;open&quot;:17.76,&quot;volumefrom&quot;:96092.61,&quot;volumeto&quot;:1574640.02,&quot;close&quot;:17.16},{&quot;time&quot;:1514937600,&quot;high&quot;:17.68,&quot;low&quot;:15.62,&quot;open&quot;:17.16,&quot;volumefrom&quot;:75289.68,&quot;volumeto&quot;:1266911.61,&quot;close&quot;:16.01},{&quot;time&quot;:1515024000,&quot;high&quot;:16.59,&quot;low&quot;:14.43,&quot;open&quot;:16.03,&quot;volumefrom&quot;:80755.25,&quot;volumeto&quot;:1258516.2,&quot;close&quot;:16.06},{&quot;time&quot;:1515110400,&quot;high&quot;:18.29,&quot;low&quot;:14.54,&quot;open&quot;:16.07,&quot;volumefrom&quot;:104693.19,&quot;volumeto&quot;:1682729.53,&quot;close&quot;:17.59},{&quot;time&quot;:1515196800,&quot;high&quot;:17.91,&quot;low&quot;:16.25,&quot;open&quot;:17.59,&quot;volumefrom&quot;:58014.94,&quot;volumeto&quot;:975679.49,&quot;close&quot;:17.03},{&quot;time&quot;:1515283200,&quot;high&quot;:17.06,&quot;low&quot;:14.47,&quot;open&quot;:17.03,&quot;volumefrom&quot;:64620.79,&quot;volumeto&quot;:994739.35,&quot;close&quot;:14.49},{&quot;time&quot;:1515369600,&quot;high&quot;:14.5,&quot;low&quot;:12.73,&quot;open&quot;:14.49,&quot;volumefrom&quot;:102880.99,&quot;volumeto&quot;:1380565.72,&quot;close&quot;:13.2},{&quot;time&quot;:1515456000,&quot;high&quot;:13.21,&quot;low&quot;:10.93,&quot;open&quot;:13.2,&quot;volumefrom&quot;:95751.66,&quot;volumeto&quot;:1168583.78,&quot;close&quot;:11.18},{&quot;time&quot;:1515542400,&quot;high&quot;:12.06,&quot;low&quot;:10.16,&quot;open&quot;:11.18,&quot;volumefrom&quot;:143351.13,&quot;volumeto&quot;:1546032.52,&quot;close&quot;:11.95},{&quot;time&quot;:1515628800,&quot;high&quot;:11.96,&quot;low&quot;:10.93,&quot;open&quot;:11.95,&quot;volumefrom&quot;:97380.62,&quot;volumeto&quot;:1100658.4,&quot;close&quot;:11.66},{&quot;time&quot;:1515715200,&quot;high&quot;:11.8,&quot;low&quot;:10.89,&quot;open&quot;:11.66,&quot;volumefrom&quot;:63382.56,&quot;volumeto&quot;:710582.11,&quot;close&quot;:10.96},{&quot;time&quot;:1515801600,&quot;high&quot;:11.12,&quot;low&quot;:10.24,&quot;open&quot;:10.96,&quot;volumefrom&quot;:58214.24,&quot;volumeto&quot;:625184.97,&quot;close&quot;:10.27}],&quot;TimeTo&quot;:1515801600,&quot;TimeFrom&quot;:1513209600,&quot;FirstValueInArray&quot;:true,&quot;ConversionType&quot;:{&quot;type&quot;:&quot;invert&quot;,&quot;conversionSymbol&quot;:&quot;&quot;}}
    </p>
    <p>
      // spark: org.apache.spark.sql.SparkSession = org.apache.spark.sql.SparkSession@3fb8bf89
    </p>
    <p>
      // import spark.implicits._
    </p>
    <p>
      // import org.apache.spark.sql.functions._
    </p>
    <p>
      // df: org.apache.spark.sql.DataFrame = [Aggregated: boolean, ConversionType: struct&lt;conversionSymbol: string, type: string&gt; ... 6 more fields]
    </p>
    <p>
      // jsonExplodedDF: org.apache.spark.sql.DataFrame = [Aggregated: boolean, ConversionType: struct&lt;conversionSymbol: string, type: string&gt; ... 1 more field]
    </p>
    <p>
      
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
<node TEXT="fast" ID="ID_1651458055" CREATED="1521825902849" MODIFIED="1521826084882"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      1. Memory
    </p>
    <p>
      1. Result of mappers goes to shared memory accross the cluster and not to disk
    </p>
    <p>
      1. In reality hadoop mapreduced optimized with Tez which means it keeps values in mem like spark
    </p>
    <p>
      1. In reality If spark runs out of memory intermediate results goes to disk.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="run" ID="ID_13395780" CREATED="1521897794317" MODIFIED="1521898050723"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash<br/>./bin/pyspark --master local[1] # start spark shell.
    </p>
    <p>
      ./bin/pyspark-submit myprog.py 1 2 just args
    </p>
    <p>
      ./bin/sparkR --master local # =&gt; (r spark shell)
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="hdfs" ID="ID_1763749311" CREATED="1521898131189" MODIFIED="1521898182840"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```scala
    </p>
    <p>
      val textFile = sc.textFile(&quot;hdfs://localhost:9000/user/hdfs/somefile.txt&quot;)
    </p>
    <p>
      txtFile.count
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Algorithms" POSITION="right" ID="ID_1447250810" CREATED="1521826444969" MODIFIED="1521826447038">
<edge COLOR="#00ffff"/>
<node TEXT="Gradiant Descent" ID="ID_216312464" CREATED="1521826447523" MODIFIED="1521826485826"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      almost every machine learning algorithm uses optimisation at it's core, optimising the target function.&#160;&#160;Local minimum.&#160;&#160;start with 0 `coefficient = 0.0`.&#160;&#160;`cost = evaluate(f(coefficient))`.&#160;&#160;Update coefficient downhill with derivative.&#160;&#160;`coefficient = coefficient - (alpha * delta)`.&#160;&#160;alpha learning parameter.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Stochastic Gradiant Descent" ID="ID_952743102" CREATED="1521826500157" MODIFIED="1521999725715"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Have large amounts of data, update to coefficients is for each training instance, not in batch, as we have random data we move quickly.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="hadoop" POSITION="left" ID="ID_1209844858" CREATED="1521828760446" MODIFIED="1521828762507">
<edge COLOR="#7c0000"/>
<node TEXT="install" ID="ID_399060112" CREATED="1521828763142" MODIFIED="1521870812557"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in general for hadoop, hive, ping installations you download the tar.gz, set environment variables for its home, and add folders in hdfs if needed.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="from source" ID="ID_1334061015" CREATED="1521828764810" MODIFIED="1524323001564">
<icon BUILTIN="button_ok"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://www.safaribooksonline.com/library/view/hadoop-and-spark/9780134770871/HASF_01_02_02_01.html
    </p>
    <p>
      extract hadoop tar.gz, make sure JAVA_HOME in path, HADOOP_HOME configured, add yarn, hdfs, mapred users, make directories: /var/data/hadoop/hadfs/[nn,snn], log directory,
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="core-site.xml" ID="ID_1905530992" CREATED="1521829494537" MODIFIED="1524323001565">
<icon BUILTIN="button_ok"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      fs.default.name: hdfs://localhsot:9000 #=&gt; set the hdfs port.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="hdfs-site.xml" ID="ID_11525604" CREATED="1521830434777" MODIFIED="1524323001565">
<icon BUILTIN="button_ok"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      hdfs parameters, dfs.replication: 1, dfs. directory...
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="format hdfs" ID="ID_342693020" CREATED="1521830596592" MODIFIED="1521830631312"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      su - hdfs
    </p>
    <p>
      cd /opt/hadoop-2.8.1/bin
    </p>
    <p>
      ./hdfs namenode -format
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="start" ID="ID_1317026566" CREATED="1521830862338" MODIFIED="1521831008292"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      cd /opt/hadoop-2.8.1/sbin
    </p>
    <p>
      ./hadoop-daemon.sh start namenode
    </p>
    <p>
      ./hadoop-daemon.sh start secondarynamenode
    </p>
    <p>
      ./hadoop-daemon.sh start datanode
    </p>
    <p>
      jps # =&gt; java processes status the above are all java processes.
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="create hdfs folders" ID="ID_1368935367" CREATED="1521831069499" MODIFIED="1521831136096"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      hdfs dfs -mkdir -p /mr-history/tmp /mr-history/done chown to yarn:hadoop
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="start yarn" ID="ID_1923300614" CREATED="1521831137799" MODIFIED="1521831265618"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      su - yarn
    </p>
    <p>
      ./yarn-daemon.sh start resourcemanager
    </p>
    <p>
      ./yarn-daemon.sh start nodemanager
    </p>
    <p>
      ./mr-jobhistory-daemon.sh start historyserver
    </p>
    <p>
      jps
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="urls" ID="ID_796203534" CREATED="1521831280542" MODIFIED="1521831281560">
<node TEXT="hdfs fs" ID="ID_720270356" CREATED="1521831333435" MODIFIED="1521831336490">
<node TEXT="http://localhost:50070" ID="ID_51447782" CREATED="1521831288183" MODIFIED="1521831373704" LINK="http://localhost:50070"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      hdfs file system
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="yarn" ID="ID_695952373" CREATED="1521831341114" MODIFIED="1521831343025">
<node TEXT="http://localhost:8088" ID="ID_1812778622" CREATED="1521831343426" MODIFIED="1522522722965" LINK="http://localhost:8088"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      as a local file system
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="jobtracker" ID="ID_1991580657" CREATED="1523631425399" MODIFIED="1523631427065">
<node TEXT="http://headnode:50030" ID="ID_347438443" CREATED="1523631429512" MODIFIED="1523631468061"/>
</node>
</node>
<node TEXT="run test" ID="ID_1845386134" CREATED="1521831424821" MODIFIED="1521831426495">
<node TEXT="yarn jar somejob.jar args" ID="ID_389941881" CREATED="1521831434750" MODIFIED="1521831474317"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      run a test mr jar with yarn
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="hdfs" ID="ID_1222839698" CREATED="1522515836980" MODIFIED="1522515839776">
<node TEXT="roles" ID="ID_544030945" CREATED="1521909597166" MODIFIED="1521909598336">
<node TEXT="namenode" ID="ID_66513195" CREATED="1521909600661" MODIFIED="1521909730974"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      like a **traffic cop**, telling us where to find or write data, also handles failures of data nodes, if data node does not report back with status its timeout and namenode will remove it, we see one namespace across the whole data.&#160;&#160;Client contacts namenode and then datanode returned from namenode for the actual data.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="inmemory" ID="ID_748990528" CREATED="1522571934767" MODIFIED="1522571995443"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      stores HDFS metadata in memory at startup reads it fro file `fsimage`. Writes added to logfile on startup it merges the log with fsimage.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="secondary namenode" ID="ID_314362974" CREATED="1522572085425" MODIFIED="1522572088190">
<node TEXT="bad title" ID="ID_323801512" CREATED="1522572088389" MODIFIED="1522572092292">
<node TEXT="checkpoint node" ID="ID_1594552460" CREATED="1522572101305" MODIFIED="1522572141440"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      better named checkpoint node because it's merging the fsimage to the edits log while the namenode is running so startup will be fast.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="backup node" ID="ID_391543057" CREATED="1522572186268" MODIFIED="1522572228805"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      same work as checkpoint node but is synchronized to namenode using real time stream from the namenode.&#160;&#160;Still no redundancy with this.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="datanode" ID="ID_1419371298" CREATED="1521909609952" MODIFIED="1521909612457"/>
<node TEXT="hdfs-client" ID="ID_66899961" CREATED="1522515916991" MODIFIED="1522515919786">
<node TEXT="calls namenode then datanode" ID="ID_182467871" CREATED="1522515920057" MODIFIED="1522515954685"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      you do operations on hdfsClient it's doing all the work of communicating with namenodes and then sending the operations to the correct data nodes.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="commands" ID="ID_1078564526" CREATED="1522520829342" MODIFIED="1522520836012">
<node TEXT="hdfs dfsadmin -report" ID="ID_1186809256" CREATED="1522520836553" MODIFIED="1522520843111"/>
<node TEXT="dfs -put file.txt" ID="ID_1803047519" CREATED="1522521026610" MODIFIED="1522521050371"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      hdfs dfs -put war-and-peace.txt
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="dfs -cp file1.txt file2.txt" ID="ID_643344569" CREATED="1522521769331" MODIFIED="1522521796117"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      copy a file inside hdfs
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="mount hdfs /mnt/hdfs" ID="ID_1343562901" CREATED="1522522694508" MODIFIED="1522522705278"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      as a local file system!
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="programming" ID="ID_1218874801" CREATED="1522522920292" MODIFIED="1522522926240">
<node TEXT="java" ID="ID_1798933618" CREATED="1522570404470" MODIFIED="1522570872402"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```java
    </p>
    <p>
      import org.apache.hadoop.fs.FileSystem // just same api as java file system.
    </p>
    <p>
      
    </p>
    <p>
      Configuration conf = new Configuration();
    </p>
    <p>
      
    </p>
    <p>
      conf.addResource(new Path(&quot;/etc/hadoop/conf/core-site.xml&quot;);
    </p>
    <p>
      conf.addResource(new Path(&quot;/etc/hadoop/conf/hdfs-site.xml&quot;);
    </p>
    <p>
      
    </p>
    <p>
      FileSystem fileSystem = FileSystem.get(conf);
    </p>
    <p>
      
    </p>
    <p>
      fileSystem.exists(&quot;/users/tomer/test.txt&quot;);
    </p>
    <p>
      
    </p>
    <p>
      // Create new file and write data to it.
    </p>
    <p>
      FSDataOutputStream out = fileSystem.create(path);
    </p>
    <p>
      InputStream in = new BufferedInputStream(new FileInputStream(
    </p>
    <p>
      &#160;&#160;new File(source)));
    </p>
    <p>
      int numBytes = 0;
    </p>
    <p>
      while ((numBytes = in.read(b)) &gt; 0) {
    </p>
    <p>
      &#160;&#160;out.write(b, 0, numBytes);
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
<node TEXT="compile" ID="ID_269256866" CREATED="1522570943063" MODIFIED="1522571392913"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      echo &quot;Main-Class: org/myorg.HDFSClient&quot; &gt; manifest.txt
    </p>
    <p>
      javac -classpath /usr/lib/hadoop/hadoop-core.jar -d HDSFClient -classes HDFSClient.java # =&gt; Note we needed to include hadoop core jar.
    </p>
    <p>
      jar -cvfe HDFSClient.jar org/myorg.HDFSClient -C HDFSClient-classes/ .
    </p>
    <p>
      hadoop jar ./HDFSClient.jar add sometextfile.txt /user/tomer # =&gt; run with program arguments.
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="classpath" ID="ID_127660297" CREATED="1522571725430" MODIFIED="1523385408740">
<icon BUILTIN="full-1"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      export CLASSPATH=$(hadoop classpath)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="HA" ID="ID_1396430806" CREATED="1522572545116" MODIFIED="1522572547165">
<node TEXT="namenode" ID="ID_406972725" CREATED="1522572555343" MODIFIED="1522572556634">
<node TEXT="standby namenode" ID="ID_886862131" CREATED="1522572267813" MODIFIED="1522572365977"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      acting like checkpoint node so it has the fsimage file, it will take over in case of failure.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="federation" ID="ID_1725970039" CREATED="1522572428394" MODIFIED="1522572458676"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Break namespace across all namespace
    </p>
    <p>
      namenode1: /research/marketing
    </p>
    <p>
      namenode2: /data/project
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="snapshots" ID="ID_1062086116" CREATED="1522572580222" MODIFIED="1522572715116"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      read onliy point-in-time copies of the file system.&#160;&#160;can be of subtree.&#160; it's not data no data copied only block list and file size.&#160;&#160;Think of snapshot of a file directory.&#160;&#160;can do this on daily basis does not slow things down.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="misc" ID="ID_1953565358" CREATED="1523301322641" MODIFIED="1523301324931">
<node TEXT="nfsv3" ID="ID_1881195147" CREATED="1523301325347" MODIFIED="1523301355868"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      NFS gateway allows you to access hdfs as if it's a local file system, its still not random access but it's convinient.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="host:5700" ID="ID_1606675233" CREATED="1523301399639" MODIFIED="1523301440472"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      web gui for nfs is at http://host:5700
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="debug" ID="ID_507455842" CREATED="1523633765097" MODIFIED="1523633766671">
<node TEXT="/var/log/hadoop" ID="ID_1251426774" CREATED="1523633768147" MODIFIED="1523633860594"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      these are the logs on the headnode you can also ssh to worker nodes and similarly look at /var/log/hadoop/mapred you will see there the task tracker logs.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="kill" ID="ID_337070816" CREATED="1523633952189" MODIFIED="1523634026478"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      hadoop job -list
    </p>
    <p>
      hadoop job -kill job_2016982347928_0042
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="map reduce" ID="ID_73465860" CREATED="1523301675993" MODIFIED="1523603542774"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      map =&gt; banana,1
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;banana, 1
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;banana, 1
    </p>
    <p>
      reduce =&gt; banana, 3
    </p>
  </body>
</html>
</richcontent>
<node TEXT="grep | wc -l" ID="ID_965326037" CREATED="1523301696537" MODIFIED="1523301732751"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      `grep &quot;Samuel&quot; somebook.txt | wc -l`
    </p>
    <p>
      grep =&gt; map
    </p>
    <p>
      wc -l =&gt; reduce
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="helloworld" ID="ID_1132705096" CREATED="1523386848857" MODIFIED="1523388707024"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      mapper: string tokenizer, emit (word, 1), reduce, sum+= values, in addition you write the &quot;driver&quot;, going to run the mapper and reducer, you say which class is mapper conf.setMapperClass(MapClass.class); you also do conf.setCombinerClass and setReducerClass.
    </p>
    <p>
      `hadoop jar wordcount.jar org.myorg.WordCount /user/myuser/inputdir /user/myuser/outputdir`
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="shuffle" ID="ID_1514553229" CREATED="1523603543380" MODIFIED="1523606946246"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      shuffle is the only step where we have communication transfer of data between nodes.
    </p>
    <p>
      ![shuffle](https://www.todaysoftmag.com/images/articles/tsm33/large/a11.png)
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="reduce" ID="ID_735109799" CREATED="1523603814033" MODIFIED="1523603852288"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      can run on multiple hosts, depending on shuffle, shuffle puts same keys on same hosts, so reduce can work on grouping of same keys and he will know he has all the same keys on the same hosts.
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="combiner" ID="ID_1599419712" CREATED="1523606621199" MODIFIED="1523606707068"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      instead of mapper saying i found earth,1 and earth,1 compiner will have the mapper report earth,2 from a certain node, optimizing the mapper so the reducer has less work.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="streaming" ID="ID_1994313940" CREATED="1523620660892" MODIFIED="1523621417129"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      **Streaming interface for hadoop jobs**
    </p>
    <p>
      you can write a mapper.py that expects stdin and just run it and amazingly you can also run it on hadoop.&#160;&#160;in the java map reduce interface we got line by line, here we get the stdin we can do anything we want. [https://www.safaribooksonline.com/library/view/hadoop-and-spark/9780134770871/HASF_01_05_01.html?autoStart=True](https://www.safaribooksonline.com/library/view/hadoop-and-spark/9780134770871/HASF_01_05_01.html?autoStart=True)
    </p>
    <p>
      ```
    </p>
    <p>
      Then you run it with:
    </p>
    <p>
      ```bash
    </p>
    <p>
      /usr/lib/hadoop/contrib/streaming/hadoop-streaming-1.1.2.21.jar -file ./mapper.py -mapeper ./mapper.py -file ./reducer.py -reducer ./reducer.py ...
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="pipes" ID="ID_984467399" CREATED="1523621419862" MODIFIED="1523621553650"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      **Pipes interface to mapreduce**
    </p>
    <p>
      it's a clean interface to do map reduce.
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="YARN" ID="ID_1888615861" CREATED="1523603417977" MODIFIED="1523606811452"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      does not care that its' map reduce its running could be any job.&#160;&#160;the previous job manager and task manager ran only map reduce.&#160;&#160;jobTracker manages jobs and taskTracker is on local nodes.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="hive" POSITION="right" ID="ID_229919236" CREATED="1521870026287" MODIFIED="1521870028694">
<edge COLOR="#00007c"/>
<node TEXT="install" ID="ID_1110618904" CREATED="1521870584406" MODIFIED="1521870589962"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://www.safaribooksonline.com/library/view/hadoop-and-spark/9780134770871/HASF_01_02_02_02.html
    </p>
  </body>
</html>
</richcontent>
<node TEXT="derby" ID="ID_1393258955" CREATED="1521871544717" MODIFIED="1521871571567"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      hive uses apache derby simple database for metastore, so you need to install it.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="AWS" POSITION="left" ID="ID_239115172" CREATED="1521876388832" MODIFIED="1521876391632">
<edge COLOR="#007c00"/>
<node TEXT="considerations" ID="ID_1177408166" CREATED="1521877929594" MODIFIED="1521877932787">
<node TEXT="develop" ID="ID_1422374412" CREATED="1521876392331" MODIFIED="1521876394082"/>
<node TEXT="deploy" ID="ID_1355586442" CREATED="1521876396334" MODIFIED="1521876397951"/>
<node TEXT="iteration time" ID="ID_1791866306" CREATED="1521877941260" MODIFIED="1523603571089"/>
<node TEXT="lower scale" ID="ID_627255401" CREATED="1521877955273" MODIFIED="1521877959402"/>
<node TEXT="processing time" ID="ID_94767701" CREATED="1521877964327" MODIFIED="1521877966930"/>
</node>
<node TEXT="key technologies" ID="ID_541624609" CREATED="1521878763889" MODIFIED="1521878767686">
<node TEXT="S3" FOLDED="true" ID="ID_1660819003" CREATED="1521878768143" MODIFIED="1523705964292"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      bucket name:
    </p>
    <p>
      1. no underscores has to be a valid hostname for hadoop usage in url
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="ACL" ID="ID_553144015" CREATED="1523705756641" MODIFIED="1523705758207"/>
</node>
<node TEXT="redshift" ID="ID_1683304109" CREATED="1521883631394" MODIFIED="1521883644390"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      relational database
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="data pipelines" ID="ID_1553840734" CREATED="1521883677960" MODIFIED="1522004981173"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ETL for data for example from S3 into redshift to view results can apply complex series of transformations.&#160;&#160;It uses EC2 for the compute power to do the moving of data.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="kinesis" ID="ID_304124178" CREATED="1521890182378" MODIFIED="1521890190638"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      like kafka
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="ec2" ID="ID_1998664016" CREATED="1523695712820" MODIFIED="1523695714033"/>
</node>
<node TEXT="resources" ID="ID_434889209" CREATED="1521890456178" MODIFIED="1521890463261"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://www.safaribooksonline.com/library/view/learn-how-to/9781491985632/video312545.html
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="process" ID="ID_857493939" CREATED="1522005709079" MODIFIED="1522005754775"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```md
    </p>
    <p>
      1. use data-pipelines to ingest data (copy from one place maybe from s3 to s3)
    </p>
    <p>
      2. run machine learning algorithm on ec2 or emr.
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="ec2" ID="ID_1355778222" CREATED="1523695716298" MODIFIED="1523695728377"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      create keypair public/private key in order to be able to connect
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="EMR" ID="ID_625095445" CREATED="1523695777881" MODIFIED="1523698485766"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      We it's all going through s3 bucket we create there folders for the jar to run for logs for the results and for the input data.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Resources:
    </p>
    <p>
      1. [https://www.youtube.com/watch?v=cAZur5maWZE&amp;index=3&amp;list=PLB5E99B925DBE79FF](https://www.youtube.com/watch?v=cAZur5maWZE&amp;index=3&amp;list=PLB5E99B925DBE79FF)
    </p>
    <p>
      ```
    </p>
    <p>
      elastic map reduce
    </p>
  </body>
</html>

</richcontent>
<node TEXT="s3" ID="ID_1780012038" CREATED="1523695785857" MODIFIED="1523705396770"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      EMR uses S3 for input and output data you need to create buckets to put your jar files and input and output.
    </p>
    <p>
      
    </p>
    <p>
      1. bucketname/folder for specifying jar to aws console
    </p>
    <p>
      1. s3n://bucket/path # =&gt; for hadoop args
    </p>
    <p>
      1. s3://bucket/path # for aws cmd line tools.
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="JobFlow" ID="ID_876956720" CREATED="1523698682007" MODIFIED="1523698882777"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      Then create a job flow so that you can create the flow you tell it where your jar file is the jar run arguments.
    </p>
    <p>
      if you choose keepAlive &lt;- no this means the EMR cluster is stopped once the job fiishes.
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Hive" ID="ID_1480093137" CREATED="1523725637919" MODIFIED="1523725706052"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      mybucket/scripts/myhive.hql # =&gt; I put there my hive script.
    </p>
    <p>
      mybucket/data/mydata.csv # =&gt; I put there my data
    </p>
    <p>
      
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="cli" ID="ID_1624204239" CREATED="1524040169185" MODIFIED="1524040170165">
<node TEXT="create spark cluster" ID="ID_1644121836" CREATED="1524039863461" MODIFIED="1524199753211"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      aws emr create-cluster --name &quot;Spark cluster&quot; --release-label emr-5.13.0 --applications Name=Spark \
    </p>
    <p>
      --ec2-attributes KeyName=tomer-key-pair --instance-type m4.small --instance-count 2 --use-default-roles
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="" ID="ID_771305824" CREATED="1524319983020" MODIFIED="1524319983020"/>
</node>
<node TEXT="list emr clusters" ID="ID_580982320" CREATED="1524040173620" MODIFIED="1524040182962"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      aws emr list-clusters
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="terminate clusters" ID="ID_1223655749" CREATED="1524040264940" MODIFIED="1524040272598"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      aws emr terminate-clusters --cluster-ids=&quot;j-W25BXM9TCOGX&quot;
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
<node TEXT="awscli" ID="ID_1036971940" CREATED="1524039300687" MODIFIED="1524039305223">
<node TEXT="install" ID="ID_774492103" CREATED="1524039306222" MODIFIED="1524039416016"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```bash
    </p>
    <p>
      pip3 install awscli --upgrade --user
    </p>
    <p>
      ```
    </p>
    <p>
      ```markdown
    </p>
    <p>
      then add /Users/tomer.bendavid/.local/bin to PATH on bash_profile
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="configure" ID="ID_351291710" CREATED="1524039446300" MODIFIED="1524039927258"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      1. `aws configure`
    </p>
    <p>
      1. take security credentials from [here](https://console.aws.amazon.com/iam/home?region=us-east-1#/security_credential)
    </p>
    <p>
      1. for default reigon i entered `us-east-1`
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
<node TEXT="python" POSITION="right" ID="ID_821721802" CREATED="1522557133588" MODIFIED="1522557135158">
<edge COLOR="#7c007c"/>
<node TEXT="urllib2" ID="ID_1131020682" CREATED="1522557135703" MODIFIED="1522557150945">
<node TEXT="getfile" ID="ID_1491224189" CREATED="1522557152792" MODIFIED="1522557340770"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```python
    </p>
    <p>
      import urllib.request
    </p>
    <p>
      url = &quot;http://www.cs.tufts.edu/comp/116/access.log&quot;
    </p>
    <p>
      accesslog =&#160;&#160;urllib.request.urlopen(url).read().decode('utf-8')
    </p>
    <p>
      print(&quot;accesslog: &quot; + accesslog)
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="matplotlib" ID="ID_1932019312" CREATED="1522697394743" MODIFIED="1522697399727"/>
<node TEXT="pandas" ID="ID_733495861" CREATED="1523100649904" MODIFIED="1524133625991"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```python
    </p>
    <p>
      from pandas import read_csv
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
<node TEXT="data" ID="ID_731711517" CREATED="1523384415329" MODIFIED="1523384430061">
<node ID="ID_33753824" CREATED="1523100661527" MODIFIED="1524128103049"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="1">pandas.read_csv</font>
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```python
    </p>
    <p>
      url = &quot;https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data&quot;
    </p>
    <p>
      names = ['sepal-length', 'sepal-width', 'petal-length', 'petal-width', 'class']
    </p>
    <p>
      dataset = pandas.read_csv(url, names=names) #name is the above name for columns.
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1530058819" CREATED="1523100760689" MODIFIED="1523100809424"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="1">dataset.shape</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1044506561" CREATED="1523100778072" MODIFIED="1523100803144"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="1">dataset.head(20)</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1135273186" CREATED="1523100833075" MODIFIED="1523100866536"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="1">dataset.describe()</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="print(dataset.groupby(&apos;class&apos;).size())" ID="ID_159958472" CREATED="1523104135356" MODIFIED="1523104150454">
<font SIZE="8"/>
</node>
<node TEXT="pandas.set_option(&apos;expand_frame_repr&apos;, False)" ID="ID_1380887896" CREATED="1524139292101" MODIFIED="1524139329659">
<font SIZE="8"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Don't break table output when printing like with `.head()` to new lines, all in one line, wide table.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="plot" ID="ID_627743534" CREATED="1523104299864" MODIFIED="1523104301831">
<node TEXT="dataset.plot(kind=&apos;box&apos;, subplots=True, layout=(2,2), sharex=False, sharey=False)" ID="ID_995471276" CREATED="1523104243630" MODIFIED="1523104616457">
<font SIZE="8"/>
</node>
<node TEXT="dataset.hist()" ID="ID_363192239" CREATED="1523104279714" MODIFIED="1523104612171">
<font SIZE="8"/>
</node>
<node TEXT="scatter_matrix(dataset)" ID="ID_569613973" CREATED="1523104593613" MODIFIED="1524133869718">
<font SIZE="8"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      plt.show()
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="build model" ID="ID_78251193" CREATED="1523384446351" MODIFIED="1523385423846">
<node TEXT="validation dataset" ID="ID_1959219170" CREATED="1523385084390" MODIFIED="1523385412808">
<icon BUILTIN="full-1"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      seperate out validation dataset.
    </p>
    <p>
      80% for data, 20% for validation.
    </p>
    <p>
      
    </p>
    <p>
      ```python
    </p>
    <p>
      # Split-out validation dataset
    </p>
    <p>
      array = dataset.values
    </p>
    <p>
      X = array[:,0:4]
    </p>
    <p>
      Y = array[:,4]
    </p>
    <p>
      validation_size = 0.20
    </p>
    <p>
      seed = 7
    </p>
    <p>
      X_train, X_validation, Y_train, Y_validation = model_selection.train_test_split(X, Y, test_size=validation_size, random_state=seed)
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="cross validation" ID="ID_31900584" CREATED="1523385282083" MODIFIED="1524134973306">
<icon BUILTIN="full-2"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      10 fold cross validation for accuracy.
    </p>
    <p>
      ```python
    </p>
    <p>
      # Test options and evaluation metric
    </p>
    <p>
      seed = 7
    </p>
    <p>
      scoring = 'accuracy'
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="build choose models" ID="ID_1804647778" CREATED="1523385391531" MODIFIED="1523385923275">
<icon BUILTIN="full-3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      evaluate 6 models:
    </p>
    <p>
      
    </p>
    <p>
      1. Logistic Regression (LR)
    </p>
    <p>
      1. Linear Discriminant Analysis (LDA)
    </p>
    <p>
      1. K-Nearest Neighbors (KNN).
    </p>
    <p>
      1. Classification and Regression Trees (CART).
    </p>
    <p>
      1. Gaussian Naive Bayes (NB).
    </p>
    <p>
      1. Support Vector Machines (SVM).
    </p>
    <p>
      
    </p>
    <p>
      This is a good mixture of simple linear (LR and LDA), nonlinear (KNN, CART, NB and SVM) algorithms
    </p>
    <p>
      ```
    </p>
    <p>
      
    </p>
    <p>
      ```python
    </p>
    <p>
      # Spot Check Algorithms
    </p>
    <p>
      models = []
    </p>
    <p>
      models.append(('LR', LogisticRegression()))
    </p>
    <p>
      models.append(('LDA', LinearDiscriminantAnalysis()))
    </p>
    <p>
      models.append(('KNN', KNeighborsClassifier()))
    </p>
    <p>
      models.append(('CART', DecisionTreeClassifier()))
    </p>
    <p>
      models.append(('NB', GaussianNB()))
    </p>
    <p>
      models.append(('SVM', SVC()))
    </p>
    <p>
      # evaluate each model in turn
    </p>
    <p>
      results = []
    </p>
    <p>
      names = []
    </p>
    <p>
      for name, model in models:
    </p>
    <p>
      &#160;&#160;&#160;&#160;kfold = model_selection.KFold(n_splits=10, random_state=seed)
    </p>
    <p>
      &#160;&#160;&#160;&#160;cv_results = model_selection.cross_val_score(model, X_train, Y_train, cv=kfold, scoring=scoring)
    </p>
    <p>
      &#160;&#160;&#160;&#160;results.append(cv_results)
    </p>
    <p>
      &#160;&#160;&#160;&#160;names.append(name)
    </p>
    <p>
      &#160;&#160;&#160;&#160;msg = &quot;%s: %f (%f)&quot; % (name, cv_results.mean(), cv_results.std())
    </p>
    <p>
      &#160;&#160;&#160;&#160;print(msg)
    </p>
    <p>
      ```
    </p>
    <p>
      
    </p>
    <p>
      results:
    </p>
    <p>
      
    </p>
    <p>
      ```bash
    </p>
    <p>
      LR: 0.966667 (0.040825)
    </p>
    <p>
      LDA: 0.975000 (0.038188)
    </p>
    <p>
      KNN: 0.983333 (0.033333)
    </p>
    <p>
      CART: 0.975000 (0.038188)
    </p>
    <p>
      NB: 0.975000 (0.053359)
    </p>
    <p>
      SVM: 0.981667 (0.025000)
    </p>
    <p>
      ```
    </p>
    <p>
      
    </p>
    <p>
      plot models comparison:
    </p>
    <p>
      
    </p>
    <p>
      ```python
    </p>
    <p>
      # Compare Algorithms
    </p>
    <p>
      fig = plt.figure()
    </p>
    <p>
      fig.suptitle('Algorithm Comparison')
    </p>
    <p>
      ax = fig.add_subplot(111)
    </p>
    <p>
      plt.boxplot(results)
    </p>
    <p>
      ax.set_xticklabels(names)
    </p>
    <p>
      plt.show()
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="make predictions" ID="ID_1390573783" CREATED="1523385924551" MODIFIED="1523385961504">
<icon BUILTIN="full-4"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```python
    </p>
    <p>
      # Make predictions on validation dataset
    </p>
    <p>
      knn = KNeighborsClassifier()
    </p>
    <p>
      knn.fit(X_train, Y_train)
    </p>
    <p>
      predictions = knn.predict(X_validation)
    </p>
    <p>
      print(accuracy_score(Y_validation, predictions))
    </p>
    <p>
      print(confusion_matrix(Y_validation, predictions))
    </p>
    <p>
      print(classification_report(Y_validation, predictions))
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="errors f1 score" ID="ID_477847901" CREATED="1523386013535" MODIFIED="1523386070912">
<icon BUILTIN="full-5"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      We can see that the accuracy is 0.9 or 90%. The confusion matrix provides an indication of the three errors made. Finally, the classification report provides a breakdown of each class by precision, recall, f1-score and support showing excellent results (granted the validation dataset was small).
    </p>
    <p>
      ```
    </p>
    <p>
      
    </p>
    <p>
      ```bash
    </p>
    <p>
      0.9
    </p>
    <p>
      
    </p>
    <p>
      [[ 7&#160;&#160;0&#160;&#160;0]
    </p>
    <p>
      &#160;[ 0 11&#160;&#160;1]
    </p>
    <p>
      &#160;[ 0&#160;&#160;2&#160;&#160;9]]
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;precision&#160;&#160;&#160;&#160;recall&#160;&#160;f1-score&#160;&#160;&#160;support
    </p>
    <p>
      
    </p>
    <p>
      Iris-setosa&#160;&#160;&#160;&#160;&#160;&#160;&#160;1.00&#160;&#160;&#160;&#160;&#160;&#160;1.00&#160;&#160;&#160;&#160;&#160;&#160;1.00&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;7
    </p>
    <p>
      Iris-versicolor&#160;&#160;&#160;0.85&#160;&#160;&#160;&#160;&#160;&#160;0.92&#160;&#160;&#160;&#160;&#160;&#160;0.88&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;12
    </p>
    <p>
      Iris-virginica&#160;&#160;&#160;&#160;0.90&#160;&#160;&#160;&#160;&#160;&#160;0.82&#160;&#160;&#160;&#160;&#160;&#160;0.86&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;11
    </p>
    <p>
      
    </p>
    <p>
      avg / total&#160;&#160;&#160;&#160;&#160;&#160;&#160;0.90&#160;&#160;&#160;&#160;&#160;&#160;0.90&#160;&#160;&#160;&#160;&#160;&#160;0.90&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;30
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="resources" ID="ID_538906411" CREATED="1523385234314" MODIFIED="1523385236138">
<node TEXT="https://machinelearningmastery.com/machine-learning-in-python-step-by-step/" ID="ID_763638099" CREATED="1523385253520" MODIFIED="1523385261165" LINK="https://machinelearningmastery.com/machine-learning-in-python-step-by-step/"/>
</node>
</node>
</node>
<node TEXT="Amazon" POSITION="left" ID="ID_465172746" CREATED="1524126987841" MODIFIED="1524126989592">
<edge COLOR="#007c7c"/>
<node TEXT="open data" ID="ID_1074743878" CREATED="1524126990803" MODIFIED="1524127011213"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```markdown
    </p>
    <p>
      1. [Amazon reviews data set](https://www.kaggle.com/bittlingmayer/amazonreviews)
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
