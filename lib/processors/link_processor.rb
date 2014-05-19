class LinkProcessor < TextProcessorBase
  def process(text)
    return text.gsub(/\(\((.+?)\s\[(.+?)\]\)\)/) { "<a href=\"#{$1}\">#{$2}</a>" }
  end
end
