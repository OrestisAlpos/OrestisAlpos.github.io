require 'jekyll/scholar'
require 'uri'

# https://github.com/inukshuk/jekyll-scholar/issues/30

module MarkdownURLFilter
  class MarkdownURL < BibTeX::Filter
    def apply(value)
      #      value.to_s.gsub(URI.regexp(['http','https','ftp'])) { |c| "[#{$&}](#{$&})" }
      value.to_s.gsub(URI.regexp(['http','https','ftp'])) { |c| "<a href=\"#{$&}\">#{$&}</a>" }
    end
  end
end
