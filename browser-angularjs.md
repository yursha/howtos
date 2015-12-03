- http://vanilla-js.com/
- mootools
- jquery
- prototype
- angular1
- coffeescript
- backbone.js
- bootstrap
- ember.js
- meteor
- react
- angular2

- https://github.com/angular/angular.js
- https://blog.angularjs.org/
- https://docs.angularjs.org/api
- https://docs.angularjs.org/guide/scope
 + Directive: ngClick, ngHref, ngIf, ngModel, ngOptions, ngRepeat, ngSrc, select
 + Type: angular.Module
 + Provider:
 + Service: $rootScope
 + auto, ngAnimate, ngAria, ngCookies, ngMessageFormat, ngMessages, ngMock, ngMockE2E, ngResource, ngSanitize, ngTouch
- http://angularjs.blogspot.com/2014/02/an-angularjs-style-guide-and-best.html
- https://github.com/johnpapa/angular-styleguide
- https://github.com/angular/angular.js/wiki/Understanding-Scopes
- http://www.bennadel.com/blog/2760-one-time-data-bindings-for-object-literal-expressions-in-angularjs-1-3.htm
- http://onehungrymind.com/angularjs-sticky-notes-pt-2-isolated-scope/
- http://fdietz.github.io/recipes-with-angular-js/common-user-interface-patterns/filtering-and-sorting-a-list.html

# Twitter Bootstrap
- https://github.com/angular-ui/bootstrap (Integration of Twitter Bootstrap and AngularJS)
- http://mgcrea.github.io/angular-strap/

# Angular UI widgets 
- https://github.com/angular-ui
- https://angular-ui.github.io/ (modal, dropdown, typeahead)

# UI Router
- https://github.com/angular-ui/ui-router (Nested views with AngularJS), http://angular-ui.github.io/ui-router/site/#/api/ui.router
- https://github.com/angular-ui/ui-router/wiki/URL-Routing#stateparams-service

# File Upload
- https://github.com/danialfarid/ng-file-upload

# How Angular works
- script load
- script looks up `ng-app` directive
- script creates constants and all `config` blocks
 + filters via `$filterProvider`. All filters are available everywhere.
 + directives
 + controllers
 + services
- script runs `run` blocks
- script creates `$rootScope`
- script compiles HTML
 + script downloads directive templates
- script instantiates scopes
- script instantiates controllers
- register watch expressions

## ngRoute
- fetch view template
- broadcast `$routeChangeStart`
- instantiate controller
- render view
- broadcast `$routeChangeSuccess`

# Debugging
- Angular automatically places `ng-scope` class on elements where scopes are attached. (Can be colored)

> To examine the scope in the debugger:
> Right click on the element of interest in your browser and select 'inspect element'. You should see the browser debugger with the element you clicked on highlighted.
> The debugger allows you to access the currently selected element in the console as $0 variable.
> To retrieve the associated scope in console execute: angular.element($0).scope() or just type $scope

# Annoying
In AngularJS both **view model** and **controller behaviour** live in the **scope** objects without a clear boundary. To separate them we can store all model-level data in `$scope.model` and all controller-level behaviour in `$scope.controller`.

# Concepts
Scope behaviour can be called (with parameters) from expressions or event-handler directives. Expressions are re-evaluated when model changes. Event-handler directives are evaluated on events.

When an scope expression is evaluated, scope fields are looked up in the scope chain upto the root scope.

Services are singletons.

Directives watch the scope and update DOM and vice versa.

Scope is what separates controllers and directives that can communicate only via scope. Scope is created only thru directives.

Scopes can progagate events in the tree in a top-down or bottom-up manner.

Directives have priority levels.

# Scope-producing directives
Directives can also produce **isolate scope**.
- `ng-app`
- `ng-controller`
- `ng-repeat` (for each item in a collection)
- `ng-view`
- `ng-if`

# Modules
- `ng` (angular.js)
- `ngRoute` (angular-route.js) - enables URL routing. Supports URL management via both hashbang and HTML5 pushState.
- `ngAnimate` (angular-animate.js)
- `ngAria` (angular-aria.js)
- `ngResource` (angular-resource.js)
- `ngCookies` (angular-cookies.js)
- `ngTouch` (angular-touch.js)
- `ngSanitize` (angular-sanitize.js)
- `ngMock` (angular-mocks.js)

# Directives
- `ng-controller` - compiler creates new scope, binds it to DOM element and creates a new controller object (or calls just a function without `new`?). Every controller is a singleton if a corresponding object exists at all.


# Services
- `$http` - wrapper around `XMLHttpRequest` and JSONP transports.
- `$provide`
- `$injector`

# Templating
The HTML **template** is processed by the **compiler** during app load. Template expressions are evaluated against a *scope tree* with `$rootScope` as a root.
DOM is accessed **declaratively** through **directives** which are also processed by the **compiler**.

# Live Data Binding (2-way)
Automatic synchronization of data between the **view** (DOM) and the **view model** (part of **scope** objects) in both directions.

# Controllers
The purpose of **controllers** is to expose variables and functionality to **expressions** and **directives**.

# Design
The flow of marshaling data from the server to an internal object to an HTML form, allowing users to modify the form, validating the form, displaying validation errors, returning to an internal model, and then back to the server, creates a lot of boilerplate code.

# Client-side validation
- required (non-blank)
- pattern
- minlength
- maxlength
- min
- max

# Test services in browser console

Get hold of $http service
```
> var h = angular.element(document).injector().get('$http')
> function j(response) { console.log(JSON.stringify(response.data, null, 2)) }
> h.get('url').then(j)
```

Get scope reference for selected element
```
> var s = angular.element($0).scope() 
> // do some staff
> s.$digest()
```

- https://developers.google.com/speed/libraries/
