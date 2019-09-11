require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class FrameitRtlSupportHelper
      # class methods that you define here become available in your action
      # as `Helper::FrameitRtlSupportHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the frameit_rtl_support plugin helper!")
      end
    end
  end
end
