require 'fastlane/action'
require_relative '../helper/frameit_rtl_support_helper'

module Fastlane
  module Actions
    class FrameScreenshotsRtlSupportAction < ::Fastlane::Actions::FrameitAction
      def self.run(config)
        # Override existing runner to return RTLEditor
        require 'frameit/runner_ext'
        super(config)
      end

      def self.description
        "Adds device frames around all screenshots (via _frameit_)"
      end

      def self.details
        [
          "Uses [frameit](https://docs.fastlane.tools/actions/frameit/) to prepare perfect screenshots for the App Store, your website, QA or emails.",
          "You can add background and titles to the framed screenshots as well."
        ].join("\n")
      end

      def self.author
        ["ainame"]
      end

      def self.example_code
        [
          'frameit_rtl_support # alias for "frame_screenshots"',
          'frame_screenshots_rtl_support',
          'frame_screenshots_rtl_support(silver: true)',
          'frame_screenshots_rtl_support(path: "/screenshots")',
          'frame_screenshots_rtl_support(rose_gold: true)'
        ]
      end

      def self.category
        :screenshots
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
