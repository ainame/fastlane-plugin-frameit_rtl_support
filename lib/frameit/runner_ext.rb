require 'frameit'
require_relative 'rtl_editor'

module Frameit
  class Runner
    # override Frameit::Runner.editor
    def editor(screenshot)
      if screenshot.mac?
        return ::Frameit::MacEditor.new(screenshot)
      elsif screenshot.path.include?('ar')
        return ::Frameit::RTLEditor.new(screenshot, Frameit.config[:debug_mode])
      else
        return ::Frameit::Editor.new(screenshot, Frameit.config[:debug_mode])
      end
    end
  end
end
