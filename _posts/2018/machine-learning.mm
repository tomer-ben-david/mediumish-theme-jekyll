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
<hook NAME="AutomaticEdgeColor" COUNTER="9" RULE="ON_BRANCH_CREATION"/>
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
<node TEXT="from source" ID="ID_1334061015" CREATED="1521828764810" MODIFIED="1521830474750"><richcontent TYPE="NOTE">

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
<node TEXT="core-site.xml" ID="ID_1905530992" CREATED="1521829494537" MODIFIED="1521830434337"><richcontent TYPE="NOTE">

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
<node TEXT="hdfs-site.xml" ID="ID_11525604" CREATED="1521830434777" MODIFIED="1521830494092"><richcontent TYPE="NOTE">

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
<node TEXT="classpath" ID="ID_127660297" CREATED="1522571725430" MODIFIED="1522571737541"><richcontent TYPE="NOTE">

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
<node TEXT="iteration time" ID="ID_1791866306" CREATED="1521877941260" MODIFIED="1521877943449"/>
<node TEXT="lower scale" ID="ID_627255401" CREATED="1521877955273" MODIFIED="1521877959402"/>
<node TEXT="processing time" ID="ID_94767701" CREATED="1521877964327" MODIFIED="1521877966930"/>
</node>
<node TEXT="key technologies" ID="ID_541624609" CREATED="1521878763889" MODIFIED="1521878767686">
<node TEXT="S3" ID="ID_1660819003" CREATED="1521878768143" MODIFIED="1521878769112"/>
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
</node>
</node>
</map>
