require 'frameit'
require 'bidi'
require_relative './arabic_reshaper'

# This file exsits to apply a monkey patch into frameit/editor.rb in order to enable RTL support
module Frameit
  class RTLEditor < Frameit::Editor
    include ::Frameit::ArabicReshaper

    @@bidi = Bidi.new

    def fetch_text(type)
      text = super(type)
      @@bidi.render_visual(reshape(text)) if text
    end
  end
end
