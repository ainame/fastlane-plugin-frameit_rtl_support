require 'fastlane/plugin/frameit_rtl_support/version'

begin
  require 'frameit'
rescue => error
  $stderr.puts('This gem completely depends on `frameit` in `fastlane` gem. So install `fastlane` to use `fastlane-plugin-frameit_rtl_support`.')
  raise error
end

module Fastlane
  module FrameitRtlSupport
    # Return all .rb files inside the "actions" and "helper" directory
    def self.all_classes
      Dir[File.expand_path('**/{actions,helper}/*.rb', File.dirname(__FILE__))]
    end
  end
end

# By default we want to import all available actions and helpers
# A plugin can contain any number of actions and plugins
Fastlane::FrameitRtlSupport.all_classes.each do |current|
  require current
end
