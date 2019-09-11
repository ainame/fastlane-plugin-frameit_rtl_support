require 'frameit'

module Frameit
  class Runner
    # override Frameit::Runner.editor
    def editr(screenshot)
      if screenshot.mac?
        return MacEditor.new(screenshot)
      else
        return RTLEditor.new(screenshot, Frameit.config[:debug])
      end
    end
  end
end
