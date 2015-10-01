- https://docs.angularjs.org/api
- https://github.com/johnpapa/angular-styleguide

# Annoying
- In AngularJS both **view model** (state) and **controller** (behaviour) live in the same controller object without a clear boundary. This can be circumvented by keeping all model-level functionality in the single `controller.model` object and all controller-level functionality directly in the `controller` object.

# Templating
The HTML **template** is processed by the **compiler** during app load. Different **view models** are used to populate different part of the HTML **template**.
DOM is accessed **declaratively** through **directives**. 

# Live Data Binding (2-way)
Automatic synchronization of data between the **view** (DOM) and the **view model** in both directions. The purpose of **controllers** is to expose variables and functionality to **expressions** and **directives**.

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
