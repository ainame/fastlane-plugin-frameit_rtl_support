# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/frameit_rtl_support/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-frameit_rtl_support'
  spec.version       = Fastlane::FrameitRtlSupport::VERSION
  spec.author        = 'ainame'
  spec.email         = 's.namai.09@gmail.com'

  spec.summary       = 'This is an experiment that making frameit support RTL languages such as Arabic'
  spec.homepage      = "https://github.com/aianme/fastlane-plugin-frameit_rtl_support"
  spec.license       = "GPL-3.0-or-later"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  spec.add_dependency 'bidi'

  spec.add_development_dependency('pry')
  spec.add_development_dependency('bundler')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec_junit_formatter')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rubocop', '0.49.1')
  spec.add_development_dependency('rubocop-require_tools')
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('fastlane', '>= 2.112.0')
end
