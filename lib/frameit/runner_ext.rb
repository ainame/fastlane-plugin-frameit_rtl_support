require 'frameit'

module Frameit
  class Runner
    # override Frameit::Runner.editor
    def editor(screenshot)
      if screenshot.mac?
        return MacEditor.new(screenshot)
      else
        return RTLEditor.new(screenshot, Frameit.config[:debug_mode])
      end
    end
  end
end
