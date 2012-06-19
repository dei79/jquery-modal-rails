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
//= require jquery.modal.min
```

Also add the jQuery modal CSS to your application.css:

```css
/*
 *= require jquery.modal
 */
```

All images required by jQuery Modal are automatically served through the asset
pipeline, so you are good to go! For example, this code will open a view as a
modal dialog

```sample
<a href="/users/new" rel="modal:open">New User</a>
```

