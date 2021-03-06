# semantic-rails-ui

[![Gem Version](http://img.shields.io/gem/v/semantic-rails-ui.svg)][gem]
[![Build Status](http://img.shields.io/travis/igorj/semantic-rails-ui.svg)][travis]
[![Dependency Status](http://img.shields.io/gemnasium/igorj/semantic-rails-ui.svg)][gemnasium]
[![Code Climate](http://img.shields.io/codeclimate/github/igorj/semantic-rails-ui.svg)][codeclimate]
[![Coverage Status](http://img.shields.io/coveralls/igorj/semantic-rails-ui.svg)][coveralls]

[gem]: https://rubygems.org/gems/semantic-rails-ui
[travis]: http://travis-ci.org/igorj/semantic-rails-ui
[gemnasium]: https://gemnasium.com/igorj/semantic-rails-ui
[codeclimate]: https://codeclimate.com/github/igorj/semantic-rails-ui
[coveralls]: https://coveralls.io/r/igorj/semantic-rails-ui


- Integration with semantic-ui (with semantic-ui-sass gem) and simple_form.
- The gem also includes coffee-rails, sass-rails, jquery-rails, uglifier, turbolinks, autoprefixer-rails, as well as active_link_to, so you don't have to include them in your rails application
- Adds following view helpers: `ui_flash_messages`, `ui_icon`, `ui_icon_header`, `ui_delete_link`, `ui_simple_delete_link`, `ui_nav_link_to`
- Modifies the default rails scaffolding templates so that you get nice semantic-ui scaffolds out of the box

![List scaffold screenshot](docs/list.png)
![Form scaffold screenshot](docs/form.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'semantic-rails-ui'
```

And then execute:

    $ bundle


## Usage

Add semantic-rails-ui to your assets: 

application.js
```
//= require semantic-rails-ui
```

application.sass: 
```
@import "semantic-rails-ui"
```

Add some basic css to application.sass: 
```
body
  background-color: #f7f0e9

#content
  margin: 2em
```


Create basic application layout: 

**application.html.erb:**
```html
<!DOCTYPE html>
<html>
<head>
  <title>Dummy</title>
  <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
  <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
</head>
<body>
<%= render 'layouts/navigation' %>
<div id="content">
  <%= ui_flash_messages %>
  <%= yield %>
</div>
</body>
</html>
```

Create the navigation partial: 

**_navigation.html.erb:**
```html
<div id="navigation" class="ui menu">
  <%= ui_nav_link_to root_path do %>
    <i class="home icon"></i> Home
  <% end %>
  <%= ui_nav_link_to posts_path do %>
    <i class="file text outline icon"></i> Posts
  <% end %>
</div>
```

Now you can generate a scaffold (for example: `rake g scaffold posts title body:text published:boolean`) and enjoy the semanic-ui look & feel. 

You can also use the provided helpers: 

```
<%= ui_icon_header "Welcome home", "home" %>
```

```
<%= ui_delete_link 'Destroy', article, 'Are you sure?' %>
```

```
<%= ui_nav_link_to 'Posts', posts_path %>
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 

To release a new version, run `bundle exec rake release_patch`, `bundle exec rake release_minor`, oder `bundle exec rake release_major`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to https://rubygems.org.

## Contributing

Bug reports and pull requests are welcome on github at https://github.com/igorj/semantic-rails-ui.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
