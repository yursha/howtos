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
