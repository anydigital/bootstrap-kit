Bootstrap Extra
===============

Bootstrap Extra is a Twitter Bootstrap extension implementing some extra features which are not available with the plain framework.

## Pin <small>pin.js</small>

Pin plugin is a fully automated and advanced version of the Bootstrap built-in [affix plugin](http://getbootstrap.com/javascript/#affix).

### Example

[Demo](http://tonystar.github.io/bootstrap-extra/demo/pin.html)

### Usage

#### Via data attributes

To easily add pin behavior to any element, just add `data-spy="pin"` to the element you want to spy on. Then use a container selector to define to which element to pin.

    <div class="id-sidebar" data-spy="pin" data-container=".id-content">...</div>

#### Via JavaScript

Call the pin plugin via JavaScript:

    $('.id-sidebar').pin({
      container: '.id-content'
    })

### Options

Options can be passed via data attributes or JavaScript. For data attributes, append the option name to `data-`, as in `data-container=".id-content"`.

<table>
<tr>
  <th>Name</th>
  <th>Type</th>
  <th>Default</th>
  <th>Description</th>
</tr>
<tr>
  <td>container</td>
  <td>string</td>
  <td>"body"</td>
  <td>Container selector of an element to which to pin.</td>
</tr>
</table>
