 UI

# angular

## tree of components

## angular ui redux for state

## redux

### guide

### map properties to state

#### parent component

##### aware of store

###### component send action

###### component subscribe to changes

####### getState

#### reusable component

##### properties

##### events

### app/

#### store.ts

```javascript
import ..redux..
import {listReducer} from '../reducers/list.reducer';

export class Store {
  private store;

  constructor() {
    this.store = createStore( ( listReducer ) => state );
  }

  get state() { return this.store.getState(); }

  dispatch(action) { this.store.dispatch(action)); }
}
```

#### app.component.ts

Be able to get DI store
```typescript

@Component({
  selector: 'app',
  template: `
    <h1>Redux Angular</h1>

     <button (click)="_list.addItem('some item')">add</button>
    <ul>
       <li *ngFor="let item of _store.state">{{ item.title }}</li> <!-- when list changes component rerenders -->
    </ul>
   `,
});

export class AppComponent {
  private _store;
  private _list;
  
  constructore(store: Store, list: ListActions) {
    this._store = store;
    this._list = list;
    console.log(store.state);
  }
}
```

#### app.module.ts

@NgModule({
  // providers: [Store, ListActions], // ListActions was defined as @Injectable class. We have an issue the store could not resolve store.  So we are oging to creat the List ourselvs.

  providers: [Store,
    {
      provide: ListActions,
      useFactory: store => new ListActions(store),
      deps: [Store] // so the lower case store will work.
    }
})

### actions/

we do all these folders to that we have separated folders for our business logic actions reducers components.

#### list.actions.ts

```typescript
import {Store} from '../app/store';

export const ADD_ITEM = 'ADD_ITEM';
export const REMOVE_ITEM = 'REMOVE_ITEM';

@Injectable() // So we can reuse it.
class ListActions {
  private _store: Store

  constructor(store: Store) { // angular will inject it.
    this._store = store;
  }

  addItem(item: string) { // you will call that method from you, I will dispatch action here.
    this._store.dispatch({
      type: ADD_ITEM,
      payload: { title: item, done: false }
    })

  removeItem(item) {
    this._store.dispatch({
      type: REMOVE_ITEM.
      payload: item
    })
  }
}
```

##### can be used from many components

##### always start here, add feature? add action

#### user.actions.ts

##### login

##### logout

### reducers/

#### list.reducer.ts

##### plain function

```typescript
export function listReducer(state = [], action) {
  switch(action.type) {
    case ACTIONS.ADD_ITEM:
      return [ ...state, actionl.payload ];

    case ACTIONS.REMOVE_ITEM:
      let index = state.indexOf(action.payload);
      return state.slice(0, index)
        .concat(state.slice(index + 1));

    default: return state;
  }
}
```

#### index.ts

export const rootReducer = combineReducers({ list: listReducer })

### middlewares/

```typescript
export const auth = store => next => action => {
  if (action.type == ACTIONS.LOGIN) {
    next({type: ACTIONS.LOGIN_SUCCESS, payload: {name: 'nir'}})
    setTimeout(() => {
   }, 5000);
    return next({type: ACTIONS.PENDING});
  }
  return next(action);
}
```

### components/

### ngrx/store

#### state/ reducers/ actions/

#### effects

http://www.wisdomofjim.com/blog/the-basics-of-ngrxeffects-effect-and-async-middleware-for-ngrxstore-in-angular-2

#### StoreModule.forRoot({ alert: alertReducer }

##### alert same as

###### this.store.select('alert')

the name you give your reducer in our case **alert**: alertReducer is very important and must be the same as **this.store.select('alert') otherwise you won't get your changes back to UI!!

## directives

### *ngFor="let item of _store.state.list"

# redux

## createStore(reducer)

Reduce is implemented as below!! :)

```javascript
function createStore(reducer) {
  let state;
  const listeners = [];
 
  function getState() { return state; }
 
  function dispatch(action) {
    state = reducer(state, action);
    listeners.forEach( function(listener) { listener(); }));
  }

  function subscribe(listener) {
    listeners.push(listener);
  }
}
```

### 

## dispatch(action)

### middleware

where you put your async operations that you call the server, in the action etc everything is sync but we need to do some async work.  You stuck a middleware between the dispatch and the reducer which would be async.  The middleware for example can catch an action called login even, and then it would dispatch an action pending-for-data, in state pending-for-data true.  I will separately go to server get info.
```javascript
export const middleware = store => next => action => {
  return next(action);
}
```

## subscribe(listener)

## 
getState()
