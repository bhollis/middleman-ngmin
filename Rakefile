require 'bundler'
require 'rake/clean'
require 'cucumber/rake/task'
require 'json'

Bundler::GemHelper.install_tasks

Cucumber::Rake::Task.new(:cucumber, 'Run features that should pass') do |t|
  exempt_tags = ""
  exempt_tags << "--tags ~@nojava " if RUBY_PLATFORM == "java"
  t.cucumber_opts = "--color --tags ~@wip #{exempt_tags} --strict --format #{ENV['CUCUMBER_FORMAT'] || 'pretty'}"
end

task :test => ["cucumber"]

desc "Build HTML documentation"
task :doc do
  sh 'bundle exec yard'
end

# Tasks/helpers to update ngmin, taken from https://github.com/jasonm/ngmin-rails/blob/master/Rakefile

def install_ngmin
  # Specific version of browserify is due to https://github.com/substack/node-browserify/issues/631
  `rm -rf node_modules ; npm install ngmin browserify@3.16.0`
end

def generate_ngmin
  `./node_modules/.bin/browserify ./node_modules/ngmin/main.js | sed -e's/var annotate /window.annotate /' > vendor/ngmin.js`
end

def update_version
  package = JSON.parse(File.open('./node_modules/ngmin/package.json').read)
  write_version(package["version"])
end

def write_version(version)
  text = <<-FILE
module Middleman
  module Ngmin
    VERSION = "#{version}"
  end
end
  FILE

  File.open('lib/middleman-ngmin/version.rb', 'w') { |f| f.write text }
end

namespace :ngmin do
  desc "Build a new version of ngmin.js"
  task :build do
    install_ngmin && generate_ngmin && update_version
  end
end
