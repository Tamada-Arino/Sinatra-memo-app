# -*- encoding: utf-8 -*-
# stub: rubocop-fjord 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubocop-fjord".freeze
  s.version = "0.3.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Masaki Komagata".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-04-17"
  s.email = ["komagata@gmail.com".freeze]
  s.homepage = "https://github.com/fjordllc/rubocop-fjord".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "rubocop rules for fjord, Inc.".freeze

  s.installed_by_version = "3.5.13".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<rubocop>.freeze, [">= 1.0".freeze])
  s.add_runtime_dependency(%q<rubocop-performance>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 1.17".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.0".freeze])
end
