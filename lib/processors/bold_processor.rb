class BoldProcessor < TextProcessorBase
  def process(text)
    return text.gsub(/(.?)\*\*(.+?)\*\*([^\*]?)/m) { "#{$1}<b>#{$2}</b>#{$3}" }
  end
end
