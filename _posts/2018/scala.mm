<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="scala" FOLDED="false" ID="ID_272330004" CREATED="1523172852152" MODIFIED="1523172857493" STYLE="oval">
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
<node TEXT="mockito" POSITION="right" ID="ID_410531255" CREATED="1523172861532" MODIFIED="1523173014851">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```scala
    </p>
    <p>
      import org.scalatest.mock.MockitoSugar
    </p>
    <p>
      import org.mockito.Mockito._
    </p>
    <p>
      
    </p>
    <p>
      with MockitoSugar
    </p>
    <p>
      
    </p>
    <p>
      val mockClient = mock[Client]
    </p>
    <p>
      when(mockClient.status).thenReturn(200)
    </p>
    <p>
      ```
    </p>
  </body>
</html>
</richcontent>
<node TEXT="spy" ID="ID_394022141" CREATED="1523430787226" MODIFIED="1523430824844"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```scala
    </p>
    <p>
      import org.mockito.Matchers.any
    </p>
    <p>
      
    </p>
    <p>
      val spyCouchbaseAdminUtils = Mockito.spy(couchbaseAdminUtils)
    </p>
    <p>
      
    </p>
    <p>
      Mockito.verify(spyCouchbaseAdminUtils).cleanupConnection(any(classOf[HttpURLConnection]))
    </p>
    <p>
      ```
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="play" POSITION="left" ID="ID_887145613" CREATED="1523362391358" MODIFIED="1523362392444">
<edge COLOR="#0000ff"/>
<node TEXT="json" ID="ID_1528528058" CREATED="1523362392730" MODIFIED="1523362400612"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```scala
    </p>
    <p>
      implicit val writesMutableListBuffer: Writes[ListBuffer[(String, mutable.ListBuffer[T])]] = new Writes[ListBuffer[(String, mutable.ListBuffer[T])]] {
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;def writes(q: ListBuffer[(String, mutable.ListBuffer[T])]): JsValue = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;Json.obj(&quot;myobj&quot; -&gt; q.map(
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;item =&gt; Json.obj(
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;listbuffer-key&quot; -&gt; Json.toJson(item._1),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;listbuffer-values&quot; -&gt; Json.toJson(item._2)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;)
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;val someReader = new Reads[MyObj] {
    </p>
    <p>
      &#160;&#160;&#160;&#160;override def reads(json: JsValue): JsResult[MyObj] = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;val fieldValue = (json \ &quot;someField&quot;).as[String]
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;// for simple case classes just define the default writes/reads
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;case class Customer(name: String)
    </p>
    <p>
      &#160;&#160;object Customer {
    </p>
    <p>
      &#160;&#160;&#160;&#160;implicit val customerJsonWriter = Json.writes[Customer]
    </p>
    <p>
      &#160;&#160;&#160;&#160;implicit val customerJsonReader = Json.reads[Customer]
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;// for inheritance define case object for the train with pattern matching
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;object RequestData {
    </p>
    <p>
      &#160;&#160;&#160;&#160;implicit val requestDataWriter = new Writes[RequestData] {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;override def writes(o: RequestData): JsValue = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;o match {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;case stringRequestData:StringRequestData =&gt; StringRequestData.stringRequestDataWriter.writes(stringRequestData)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;case _ =&gt; throw new IllegalArgumentException(s&quot;requestDataWriter: No writer for $o&quot;)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;implicit val requestDataReader = new Reads[RequestData] {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;override def reads(json: JsValue): JsResult[RequestData] = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;val requestType = (json \ &quot;requestType&quot;).as[String]
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;requestType match {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;case &quot;stringRequestData&quot; =&gt; StringRequestData.stringRequestDataReader.reads(json)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;case _ =&gt; throw new RuntimeException(s&quot;requestDataReader: does not support json: $json with type $requestType&quot;)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;// Map to json and json to map, array
    </p>
    <p>
      &#160;&#160;implicit val moreDetailsJsonWriter = new Writes[Map[String, SomeValue]] {
    </p>
    <p>
      &#160;&#160;&#160;&#160;override def writes(o: Map[String, SomeValue]): JsValue = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;Json.arr(o.map( {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;case (key, value) =&gt; key -&gt; SomeValue.writes(value)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}))
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;implicit val moreDetailsJsonReader = new Reads[Map[String, SomeValue]] {
    </p>
    <p>
      &#160;&#160;&#160;&#160;override def reads(json: JsValue): JsResult[Map[String, SomeValue]] = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;val mapAsJson = json.as[JsArray]
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;val kvSeq = mapAsJson.value.flatMap { entry =&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;val keyValSeq = entry.asInstanceOf[JsObject].fields
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;keyValSeq.map(keyValEntry =&gt; keyValEntry._1.asInstanceOf[String] -&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;SomeValue.reads(keyValEntry._2).get)
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;JsSuccess(kvSeq.toMap)
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;// Take first key of a json { &quot;somekey&quot;: &quot;somevalue&quot; } will return &quot;somekey&quot;
    </p>
    <p>
      &#160;&#160;json.asInstanceOf[JsObject].fields(0)._1
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
