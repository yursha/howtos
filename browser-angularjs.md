- https://github.com/angular/angular.js
- https://docs.angularjs.org/api
- https://docs.angularjs.org/guide/scope
 + Function: bootstrap, module
 + Manual: DI - Filters, Directives, Modules, Bootstrap
 + Type: angular.Module
 + Service: $rootScope
 + Directive: ngClick, ngHref
- http://angularjs.blogspot.com/2014/02/an-angularjs-style-guide-and-best.html
- https://github.com/johnpapa/angular-styleguide
- http://www.bennadel.com/blog/2760-one-time-data-bindings-for-object-literal-expressions-in-angularjs-1-3.htm

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
