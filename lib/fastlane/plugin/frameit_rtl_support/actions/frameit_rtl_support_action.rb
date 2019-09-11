require 'fastlane/action'
require_relative '../helper/frameit_rtl_support_helper'

module Fastlane
  module Actions
    class FrameitRtlSupportAction < Action
      def self.run(params)
        UI.message("The frameit_rtl_support plugin is working!")
      end

      def self.description
        "This is an experiment that making frameit support RTL languages such as Arabic"
      end

      def self.authors
        ["ainame"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "This is an experiment that making frameit support RTL languages such as Arabic. This uses 3rd party libraries that resolve the internal issue in framekit that imagemagick doesn't support RTL languages properly."
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "FRAMEIT_RTL_SUPPORT_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
