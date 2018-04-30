<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="UI" FOLDED="false" ID="ID_1619330732" CREATED="1522393791907" MODIFIED="1522393800308" STYLE="oval">
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
<node TEXT="angular" POSITION="right" ID="ID_1300159831" CREATED="1522393800767" MODIFIED="1522393802018">
<edge COLOR="#ff0000"/>
<node TEXT="tree of components" ID="ID_1983907723" CREATED="1522402651130" MODIFIED="1522402687244"/>
<node TEXT="angular ui redux for state" ID="ID_507768642" CREATED="1522402657430" MODIFIED="1522402665041"/>
<node TEXT="redux" ID="ID_651982446" CREATED="1522402665701" MODIFIED="1522402669863">
<node TEXT="guide" ID="ID_186360432" CREATED="1522397255558" MODIFIED="1522397395548" LINK="https://www.safaribooksonline.com/library/view/oscon-2016-/9781491958476/video287878.html?autoStart=True"/>
<node TEXT="map properties to state" ID="ID_1983325122" CREATED="1522402675809" MODIFIED="1522402678887">
<node TEXT="parent component" ID="ID_1439970455" CREATED="1522402801622" MODIFIED="1522402805895">
<node TEXT="aware of store" ID="ID_211186489" CREATED="1522402811045" MODIFIED="1522402815051">
<node TEXT="component send action" ID="ID_615547619" CREATED="1522402751006" MODIFIED="1522402770422"/>
<node TEXT="component subscribe to changes" ID="ID_1008558335" CREATED="1522402757085" MODIFIED="1522402763975">
<node TEXT="getState" ID="ID_1445529083" CREATED="1522402775691" MODIFIED="1522402777874"/>
</node>
</node>
</node>
<node TEXT="reusable component" ID="ID_276932968" CREATED="1522402827566" MODIFIED="1522402830292">
<node TEXT="properties" ID="ID_1584036799" CREATED="1522402839413" MODIFIED="1522402840812"/>
<node TEXT="events" ID="ID_1762532031" CREATED="1522402841339" MODIFIED="1522402842393"/>
</node>
</node>
<node TEXT="app/" ID="ID_1852540668" CREATED="1522404815807" MODIFIED="1522404843696">
<node TEXT="store.ts" ID="ID_291651501" CREATED="1522404831029" MODIFIED="1522410145870"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```javascript
    </p>
    <p>
      import ..redux..
    </p>
    <p>
      import {listReducer} from '../reducers/list.reducer';
    </p>
    <p>
      
    </p>
    <p>
      export class Store {
    </p>
    <p>
      &#160;&#160;private store;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;constructor() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;this.store = createStore( ( listReducer ) =&gt; state );
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;get state() { return this.store.getState(); }
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;dispatch(action) { this.store.dispatch(action)); }
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
</node>
<node TEXT="app.component.ts" ID="ID_420994141" CREATED="1522405285988" MODIFIED="1522411363788"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Be able to get DI store
    </p>
    <p>
      ```typescript
    </p>
    <p>
      
    </p>
    <p>
      @Component({
    </p>
    <p>
      &#160;&#160;selector: 'app',
    </p>
    <p>
      &#160;&#160;template: `
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;h1&gt;Redux Angular&lt;/h1&gt;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&lt;button (click)=&quot;_list.addItem('some item')&quot;&gt;add&lt;/button&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;ul&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;li *ngFor=&quot;let item of _store.state&quot;&gt;{{ item.title }}&lt;/li&gt; &lt;!-- when list changes component rerenders --&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;/ul&gt;
    </p>
    <p>
      &#160;&#160;&#160;`,
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      export class AppComponent {
    </p>
    <p>
      &#160;&#160;private _store;
    </p>
    <p>
      &#160;&#160;private _list;
    </p>
    <p>
      &#160;&#160;
    </p>
    <p>
      &#160;&#160;constructore(store: Store, list: ListActions) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;this._store = store;
    </p>
    <p>
      &#160;&#160;&#160;&#160;this._list = list;
    </p>
    <p>
      &#160;&#160;&#160;&#160;console.log(store.state);
    </p>
    <p>
      &#160;&#160;}
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
</node>
<node TEXT="app.module.ts" ID="ID_1821477080" CREATED="1522405376706" MODIFIED="1522410737876"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      @NgModule({
    </p>
    <p>
      &#160;&#160;// providers: [Store, ListActions], // ListActions was defined as @Injectable class. We have an issue the store could not resolve store.&#160; So we are oging to creat the List ourselvs.
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;providers: [Store,
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;provide: ListActions,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;useFactory: store =&gt; new ListActions(store),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;deps: [Store] // so the lower case store will work.
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      })
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="actions/" ID="ID_887412079" CREATED="1522408592418" MODIFIED="1522408654663"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      we do all these folders to that we have separated folders for our business logic actions reducers components.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="list.actions.ts" ID="ID_1848989946" CREATED="1522408927704" MODIFIED="1522409575473">
<icon BUILTIN="full-1"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```typescript
    </p>
    <p>
      import {Store} from '../app/store';
    </p>
    <p>
      
    </p>
    <p>
      export const ADD_ITEM = 'ADD_ITEM';
    </p>
    <p>
      export const REMOVE_ITEM = 'REMOVE_ITEM';
    </p>
    <p>
      
    </p>
    <p>
      @Injectable() // So we can reuse it.
    </p>
    <p>
      class ListActions {
    </p>
    <p>
      &#160;&#160;private _store: Store
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;constructor(store: Store) { // angular will inject it.
    </p>
    <p>
      &#160;&#160;&#160;&#160;this._store = store;
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;addItem(item: string) { // you will call that method from you, I will dispatch action here.
    </p>
    <p>
      &#160;&#160;&#160;&#160;this._store.dispatch({
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;type: ADD_ITEM,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;payload: { title: item, done: false }
    </p>
    <p>
      &#160;&#160;&#160;&#160;})
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;removeItem(item) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;this._store.dispatch({
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;type: REMOVE_ITEM.
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;payload: item
    </p>
    <p>
      &#160;&#160;&#160;&#160;})
    </p>
    <p>
      &#160;&#160;}
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
<node TEXT="can be used from many components" ID="ID_1998162036" CREATED="1522409253629" MODIFIED="1522409257950"/>
<node TEXT="always start here, add feature? add action" ID="ID_14370401" CREATED="1522409621938" MODIFIED="1522409628665"/>
</node>
<node TEXT="user.actions.ts" ID="ID_495097484" CREATED="1522414062916" MODIFIED="1522414067695">
<node TEXT="login" ID="ID_498477618" CREATED="1522414068551" MODIFIED="1522414069818"/>
<node TEXT="logout" ID="ID_1678667488" CREATED="1522414070385" MODIFIED="1522414071779"/>
</node>
</node>
<node TEXT="reducers/" ID="ID_1375259162" CREATED="1522408598069" MODIFIED="1522408600989">
<node TEXT="list.reducer.ts" ID="ID_1121323881" CREATED="1522409656187" MODIFIED="1522409673417">
<node TEXT="plain function" ID="ID_1212922061" CREATED="1522409677603" MODIFIED="1522409982309"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```typescript
    </p>
    <p>
      export function listReducer(state = [], action) {
    </p>
    <p>
      &#160;&#160;switch(action.type) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;case ACTIONS.ADD_ITEM:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;return [ ...state, actionl.payload ];
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;case ACTIONS.REMOVE_ITEM:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;let index = state.indexOf(action.payload);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;return state.slice(0, index)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.concat(state.slice(index + 1));
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;default: return state;
    </p>
    <p>
      &#160;&#160;}
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
</node>
</node>
<node TEXT="index.ts" ID="ID_1861052136" CREATED="1522413422821" MODIFIED="1522413449144"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      export const rootReducer = combineReducers({ list: listReducer })
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="middlewares/" ID="ID_129739512" CREATED="1522408602228" MODIFIED="1522414333916"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ```typescript
    </p>
    <p>
      export const auth = store =&gt; next =&gt; action =&gt; {
    </p>
    <p>
      &#160;&#160;if (action.type == ACTIONS.LOGIN) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;next({type: ACTIONS.LOGIN_SUCCESS, payload: {name: 'nir'}})
    </p>
    <p>
      &#160;&#160;&#160;&#160;setTimeout(() =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;}, 5000);
    </p>
    <p>
      &#160;&#160;&#160;&#160;return next({type: ACTIONS.PENDING});
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      &#160;&#160;return next(action);
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
</node>
<node TEXT="components/" ID="ID_1814355433" CREATED="1522408622868" MODIFIED="1522408630380"/>
<node TEXT="ngrx/store" ID="ID_697467355" CREATED="1522696560929" MODIFIED="1522696564181">
<node TEXT="state/ reducers/ actions/" ID="ID_1610503487" CREATED="1522696565014" MODIFIED="1522696593227"/>
<node TEXT="effects" ID="ID_1925677633" CREATED="1522696707644" MODIFIED="1522696713661"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      http://www.wisdomofjim.com/blog/the-basics-of-ngrxeffects-effect-and-async-middleware-for-ngrxstore-in-angular-2
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_987926986" CREATED="1522959194535" MODIFIED="1522990120318"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="1">StoreModule.forRoot({ </font>
    </p>
    <p>
      <font size="1">&#160;&#160;&#160;&#160;&#160;&#160;alert: alertReducer }</font>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="alert same as" ID="ID_341653060" CREATED="1522959222442" MODIFIED="1522959234058">
<node TEXT="this.store.select(&apos;alert&apos;)" ID="ID_1349139851" CREATED="1522959234367" MODIFIED="1522959296922"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      the name you give your reducer in our case **alert**: alertReducer is very important and must be the same as **this.store.select('alert') otherwise you won't get your changes back to UI!!
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="directives" ID="ID_690911409" CREATED="1522411125465" MODIFIED="1522411127322">
<node TEXT="*ngFor=&quot;let item of _store.state.list&quot;" ID="ID_1743735834" CREATED="1522411127540" MODIFIED="1522411129648"/>
</node>
</node>
<node TEXT="redux" POSITION="right" ID="ID_1708851315" CREATED="1522393803191" MODIFIED="1522402648819">
<edge COLOR="#0000ff"/>
<node TEXT="createStore(reducer)" ID="ID_856095969" CREATED="1522394796129" MODIFIED="1522396211143"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Reduce is implemented as below!! :)
    </p>
    <p>
      
    </p>
    <p>
      ```javascript
    </p>
    <p>
      function createStore(reducer) {
    </p>
    <p>
      &#160;&#160;let state;
    </p>
    <p>
      &#160;&#160;const listeners = [];
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;function getState() { return state; }
    </p>
    <p>
      &#160;
    </p>
    <p>
      &#160;&#160;function dispatch(action) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;state = reducer(state, action);
    </p>
    <p>
      &#160;&#160;&#160;&#160;listeners.forEach( function(listener) { listener(); }));
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;function subscribe(listener) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;listeners.push(listener);
    </p>
    <p>
      &#160;&#160;}
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
<node TEXT="" ID="ID_1200782581" CREATED="1522404822468" MODIFIED="1522404822468"/>
</node>
<node TEXT="dispatch(action)" ID="ID_996194368" CREATED="1522393807270" MODIFIED="1522393811966">
<node TEXT="middleware" ID="ID_1903472220" CREATED="1522402074493" MODIFIED="1522402373693"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      where you put your async operations that you call the server, in the action etc everything is sync but we need to do some async work.&#160;&#160;You stuck a middleware between the dispatch and the reducer which would be async.&#160;&#160;The middleware for example can catch an action called login even, and then it would dispatch an action pending-for-data, in state pending-for-data true.&#160;&#160;I will separately go to server get info.
    </p>
    <p>
      ```javascript
    </p>
    <p>
      export const middleware = store =&gt; next =&gt; action =&gt; {
    </p>
    <p>
      &#160;&#160;return next(action);
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
</node>
</node>
<node TEXT="subscribe(listener)" ID="ID_921126724" CREATED="1522393812695" MODIFIED="1522393817231"/>
<node ID="ID_1247621949" CREATED="1522393818454" MODIFIED="1522990045510"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="1">getState()</font>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</map>
