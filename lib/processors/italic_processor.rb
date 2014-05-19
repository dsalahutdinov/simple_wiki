class ItalicProcessor < TextProcessorBase
  def process(text)
    return text.gsub(/(.?)\\\\(.+?)\\\\([^\\]?)/m) { "#{$1}<i>#{$2}</i>#{$3}" }
  end
end
