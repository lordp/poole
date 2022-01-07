class TLDRTag < Liquid::Tag
    def initialize(tag_name, input, tokens)
      super
      @input = input.delete("\"")
    end
  
    def render(context)
      # Write the output HTML string
      output = "<p class=\"tldr\"><strong>TL;DR</strong> - #{@input}</p>"
  
      # Render it on the page by returning it
      return output;
  end
end

Liquid::Template.register_tag('tldr', TLDRTag)
  