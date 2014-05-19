require "simple_wiki/version"
require "processors/text_processor_base.rb"
require "processors/bold_processor.rb"
require "processors/italic_processor.rb"
require "processors/link_processor.rb"

module SimpleWiki
  class MarkupProcessor
    @text_processors = [ BoldProcessor.new, ItalicProcessor.new, LinkProcessor.new ]
 
    def self.process(text)
      result = text
      for p in @text_processors
        result = p.process(result)
      end
      return result
    end
  end
end
