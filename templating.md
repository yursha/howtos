- Templating Engine - interpolates a template by evaluating marked up expressions against a specific context.

# Mustache

Always comment template markup like this as browser will mess up the template when trying to build correct DOM.
- http://stackoverflow.com/questions/15386276/why-should-we-wrap-our-templates-inside-script-blocks

```html
<div id="template-table">
    <table>
        <thead>
            <th>Name</th>
            <th>Age</th>
        </thead>
        <tbody>
        <!--{{#students}}-->
            <tr>
                <td>{{name}}</td>
                <td>{{age}}</td>
            </tr>
        <!--{{/students}}-->
        </tbody>
    </table>
</div>
```

# Jade
- http://jade-lang.com/
- http://html2jade.org/
(attributes, interpolation, tags)
Jade brings troubles with indentation. There are no tools that can reindent automatically, so cut and paste sucks. How jade figures out hierarchy by indentation, btw?

## Jade4j
- https://github.com/neuland/jade4j
- http://naltatis.github.io/jade-syntax-docs/

# Freemarker
- http://freemarker.sourceforge.net/

# Mustache
- http://mustache.github.io/

# Apache Velocity
