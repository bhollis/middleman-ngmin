# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "middleman-ngmin/version"

Gem::Specification.new do |s|
  s.name = "middleman-ngmin"
  s.version = Middleman::Ngmin::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Ben Hollis"]
  s.email = ["ben@benhollis.net"]
  s.homepage = "https://github.com/bhollis/middleman-ngmin"
  s.summary = %q{ngmin for Middleman}
  s.description = %q{Transform AngularJS code in the asset pipeline to be safe for minification.}
  s.license = "MIT"
  s.files = `git ls-files -z`.split("\0")
  s.test_files = `git ls-files -z -- {fixtures,features}/*`.split("\0")
  s.require_paths = ["lib"]
  s.add_runtime_dependency("ngmin-rails", ["~> 0.4.0"])
  s.add_runtime_dependency("middleman-core", ["~> 3.2"])
  s.add_runtime_dependency("middleman-sprockets", ["~> 3.2"])
  s.add_runtime_dependency("execjs", ["~> 2.0.2"])

  # This is not a real dependency, but prevents ngmin-rails and middleman-core from fighting!
  s.add_runtime_dependency("rails", [">= 3.2.6"])
end
