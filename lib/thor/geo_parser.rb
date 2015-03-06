require 'nokogiri'

class GeoParser
  # parses out craigslist subdomains from an html string that it is passed and 
  # returns them in a list
  def self.parse_subdomains html
    doc = Nokogiri::HTML html
    subdomains = []
    doc.css('ul#list li a[href]').each do |link|
      matches = link.attribute('href').value.match(/https?:\/\/([^\.]+)/)
      subdomains << matches[1]
    end
    subdomains
  end
end
