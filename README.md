jquery-modal-rails
==================

The simplest possible modal for jQuery for the Rails 3.1+ asset pipeline based on https://github.com/kylefox/jquery-modal

## Usage

In your Gemfile, add:

```ruby
group :assets do
  gem 'jquery-ui-rails'
  gem 'jquery-modal-rails'
end
```

## Require Everything

To require the jQuery modal modules, add the following to your application.js:

```javascript
//= require jquery.ui.all
//= require jquery.modal
```

Also add the jQuery modal CSS to your application.css:

```css
/*
 *= require jquery.ui.all
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

The link_to_modal helper offers forms support. The following parameter ensures that every form which is part
of the received html content will be submitted via AJAX request. As a requirement the controller action needs
to support JSON

```rails
<%= link_to_modal 'New User', new_user_path, :remote => true %>
```

## Cancel or Close buttons

All anchors generated with the link_to helper can be marked as a dialog close button. Just use the following
sample:

```rails
<%= link_to 'Cancel', users_path, :rel => "modal:close" %>
```

## Contributors

Thank you to the following wonderful people and projects for contributing to jquery-modal-rails:

* @kylefox with https://github.com/kylefox/jquery-modal
* @joliss with https://github.com/joliss/jquery-ui-rails
