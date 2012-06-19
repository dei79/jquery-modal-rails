jquery-modal-rails
==================

The simplest possible modal for jQuery for the Rails 3.1+ asset pipeline based on https://github.com/kylefox/jquery-modal

## Usage

In your Gemfile, add:

```ruby
group :assets do
  gem 'jquery-modal-rails', :git => 'git://github.com/dei79/jquery-modal-rails.git'
end
```

## Require Everything

To require the jQuery modal modules, add the following to your application.js:

```javascript
//= require jquery.modal
```

Also add the jQuery modal CSS to your application.css:

```css
/*
 *= require jquery.modal
 */
```

All images required by jQuery Modal are automatically served through the asset
pipeline, so you are good to go! For example, this code will open a given DIV
as a modal dialog

```rails
<div id="demo-form" class="demo-description" style="display: none; ">
  <p>
    The basic dialog window is an overlay positioned within the viewport and is protected from page content
    (like select elements) shining through with an iframe. It has a title bar and a content area, and can be moved,
    resized and closed with the 'x' icon by default.
  </p>
</div>

<%=  link_to_modal "Demo Form", "#demo-form", :class=>"button" %>
```

Opening an existing view via AJAX as a modal dialog is that easy:

```rails
<%=  link_to_modal "New User", new_user_path, :class=>"button" %>
```

## Forms-Support

The helper link_to_modal offers basic forms support. This means the solution injects javascript the find the different
form-Tags in the received html and attaches a submit handler. This handler submits via $.ajax and closes the form
when nothing went wrong. Currently the Rails backend needs to support JSON requests on the controller action.

## Contributors

Thank you to the following wonderful people and projects for contributing to jquery-modal-rails:

* @kylefox with https://github.com/kylefox/jquery-modal
* @joliss with https://github.com/joliss/jquery-ui-rails