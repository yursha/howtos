- https://docs.angularjs.org/api
- https://github.com/johnpapa/angular-styleguide

# Annoying
In AngularJS both **view model** and **controller behaviour** live in the **scope** objects without a clear boundary. To separate them we can store all model-level data in `$scope.model` and all controller-level behaviour in `$scope.controller`.

# Templating
The HTML **template** is processed by the **compiler** during app load. Different **view models** are used to populate different part of the HTML **template**.
DOM is accessed **declaratively** through **directives**. 

# Live Data Binding (2-way)
Automatic synchronization of data between the **view** (DOM) and the **view model** (**scope** objects) in both directions.

# Controllers
The purpose of **controllers** is to expose variables and functionality to **expressions** and **directives**.

# Form validation

# Ajax

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
