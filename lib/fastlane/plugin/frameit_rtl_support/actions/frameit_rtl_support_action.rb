module Fastlane
  module Actions
    require_relative './frame_screenshots_rtl_support_action'

    class FrameitRtlSupportAction < FrameScreenshotsRtlSupportAction
      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Alias for the `frame_screenshots_rtl_support` action"
      end
    end
  end
end
