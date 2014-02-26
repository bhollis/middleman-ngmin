# middleman-ngmin

`middleman-ngmin` is an extension for the [Middleman] static site generator that adds [ngmin](https://github.com/btford/ngmin) processing for your JavaScript files to the asset pipeline. This will automatically insert the [AngularJS](http://angularjs.org) injector annotations to your declarations so that your code can minify correctly.

The code for the Sprockets processor and for bundling ngmin was taken from the [ngmin-rails](https://github.com/jasonm/ngmin-rails/issues) project - it was copied rather than having middleman-ngmin depend on ngmin-rails in order not to bring along a dependency on Rails. Thanks to Jason Morrison and Brandon Tilley for creating ngmin-rails!

[![Gem Version](https://badge.fury.io/rb/middleman-ngmin.png)][gem]
[![Build Status](https://travis-ci.org/bhollis/middleman-ngmin.png)][travis]
[![Dependency Status](https://gemnasium.com/bhollis/middleman-ngmin.png?travis)][gemnasium]
[![Code Quality](https://codeclimate.com/github/bhollis/middleman-ngmin.png)][codeclimate]

## Installation

If you're just getting started, install the `middleman` gem and generate a new project:

```bash
gem install middleman
middleman init MY_PROJECT
```

If you already have a Middleman project: Add `gem 'middleman-ngmin'` to your `Gemfile` and run `bundle install`.

## Configuration

```ruby
activate :ngmin
```

That's it! Your assets will now be processed.

## Versioning

Like ngmin-rails, middleman-ngmin's version number mirrors the version number for the version of ngmin that is bundled with it.

## Bug Reports

This project simply plugs [ngmin](https://github.com/jasonm/ngmin-rails) into Middleman! For bugs in ngmin itself, please file issues in [ngmin's issue tracker](https://github.com/btford/ngmin/issues).

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues and submit new problems: https://github.com/bhollis/middleman-ngmin/issues

The best way to get quick responses to your issues and swift fixes to your bugs is to submit detailed bug reports, include test cases and respond to developer questions in a timely manner. Even better, if you know Ruby, you can submit [Pull Requests](https://help.github.com/articles/using-pull-requests) containing Cucumber Features which describe how your feature should work or exploit the bug you are submitting.

## How to Run Cucumber Tests

1. Checkout Repository: `git clone https://github.com/bhollis/middleman-ngmin.git`
2. Install Bundler: `gem install bundler`
3. Run `bundle install` inside the project root to install the gem dependencies.
4. Run test cases: `bundle exec rake test`

## Upgrading ngmin

The actual ngmin project is bundled into this gem via [Browserify](https://github.com/substack/node-browserify). You can update to the latest version of ngmin via Rake:

    rake ngmin:build

## License

Copyright (c) 2014 Benjamin Hollis. MIT Licensed, see [LICENSE] for details.

[middleman]: http://middlemanapp.com
[gem]: https://rubygems.org/gems/middleman-ngmin
[travis]: http://travis-ci.org/bhollis/middleman-ngmin
[gemnasium]: https://gemnasium.com/bhollis/middleman-ngmin
[codeclimate]: https://codeclimate.com/github/bhollis/middleman-ngmin
[LICENSE]: https://github.com/bhollis/middleman-ngmin/blob/master/LICENSE.md
