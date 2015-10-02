- https://docs.angularjs.org/api
- https://docs.angularjs.org/guide/scope
- https://github.com/johnpapa/angular-styleguide

# Debugging
- Angular automatically places `ng-scope` class on elements where scopes are attached. (Can be colored)

> To examine the scope in the debugger:
> Right click on the element of interest in your browser and select 'inspect element'. You should see the browser debugger with the element you clicked on highlighted.
> The debugger allows you to access the currently selected element in the console as $0 variable.
> To retrieve the associated scope in console execute: angular.element($0).scope() or just type $scope

# Annoying
In AngularJS both **view model** and **controller behaviour** live in the **scope** objects without a clear boundary. To separate them we can store all model-level data in `$scope.model` and all controller-level behaviour in `$scope.controller`.

- What has a scope?
 + controller

# Concepts
Scope behaviour can be called (with parameters) from expressions or event-handler directives. Expressions are re-evaluated when model changes. Event-handler directives are evaluated on events.

There is a root scope and controller scopes.

When an scope expression is evaluated, scope fields are looked up in the scope chain upto the root scope.

Services are lazily instantiated singletons.

Directives watch the scope and update DOM and vice versa.

Scope is what separates controllers and directives that can communicate only via scope. Scope is created only thru directives.

Scopes can progagate events in the tree in a top-down or bottom-up manner.

# Scope-producing directives
- `ng-controller`
- `ng-repeat` (for each item in a collection)

# Built-in directives
- `ng-controller` - compiler creates new scope, binds it to DOM element and creates a new controller object (or calls just a function without `new`?). Every controller is a singleton if a corresponding object exists at all.


# Built-in services
- `$http` - wrapper around `XMLHttpRequest` and JSONP transports.

# Templating
The HTML **template** is processed by the **compiler** during app load. Template expressions are evaluated against a *scope tree* with `$rootScope` as a root.
DOM is accessed **declaratively** through **directives** which are also processed by the **compiler**. 

# Live Data Binding (2-way)
Automatic synchronization of data between the **view** (DOM) and the **view model** (part of **scope** objects) in both directions.

# Controllers
The purpose of **controllers** is to expose variables and functionality to **expressions** and **directives**.

# Form validation

# Event handling

# Reusable components

# Routing

# Deep linking

# Unit Testing

# End-to-end Testing

# Mocks

# Test Harnesses

# Filters
Specify what formatting to apply to an evaluated expression in the template.

# Design
The flow of marshaling data from the server to an internal object to an HTML form, allowing users to modify the form, validating the form, displaying validation errors, returning to an internal model, and then back to the server, creates a lot of boilerplate code.
