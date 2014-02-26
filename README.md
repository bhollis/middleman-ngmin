# middleman-ngmin

`middleman-ngmin` is an extension for the [Middleman] static site generator that adds [ngmin](https://github.com/btford/ngmin) processing for your JavaScript files to the asset pipeline. This will automatically insert the [AngularJS](http://angularjs.org) injector annotations to your declarations so that your code can minify correctly.

[![Gem Version](https://badge.fury.io/rb/middleman-ngmin.png)][gem]
[![Build Status](https://travis-ci.org/middleman/middleman-ngmin.png)][travis]
[![Dependency Status](https://gemnasium.com/middleman/middleman-ngmin.png?travis)][gemnasium]
[![Code Quality](https://codeclimate.com/github/middleman/middleman-ngmin.png)][codeclimate]

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

## Bug Reports

This project simply plugs [ngmin-rails](https://github.com/jasonm/ngmin-rails) into Middleman! For bugs in ngmin-rails or ngmin itself, please use those projects' issue trackers:

* [ngmin-rails](https://github.com/jasonm/ngmin-rails/issues)
* [ngmin](https://github.com/btford/ngmin/issues)

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues and submit new problems: https://github.com/middleman/middleman-ngmin/issues

The best way to get quick responses to your issues and swift fixes to your bugs is to submit detailed bug reports, include test cases and respond to developer questions in a timely manner. Even better, if you know Ruby, you can submit [Pull Requests](https://help.github.com/articles/using-pull-requests) containing Cucumber Features which describe how your feature should work or exploit the bug you are submitting.

## How to Run Cucumber Tests

1. Checkout Repository: `git clone https://github.com/middleman/middleman-ngmin.git`
2. Install Bundler: `gem install bundler`
3. Run `bundle install` inside the project root to install the gem dependencies.
4. Run test cases: `bundle exec rake test`

## License

Copyright (c) 2014 Benjamin Hollis. MIT Licensed, see [LICENSE] for details.

[middleman]: http://middlemanapp.com
[gem]: https://rubygems.org/gems/middleman-ngmin
[travis]: http://travis-ci.org/middleman/middleman-ngmin
[gemnasium]: https://gemnasium.com/middleman/middleman-ngmin
[codeclimate]: https://codeclimate.com/github/middleman/middleman-ngmin
[LICENSE]: https://github.com/middleman/middleman-ngmin/blob/master/LICENSE.md
