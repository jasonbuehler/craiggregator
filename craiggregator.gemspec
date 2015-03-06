Gem::Specification.new do |s|
  s.name        = 'craiggregator'
  s.version     = '0.0.1'
  s.date        = '2015-03-05'
  s.summary     = "A Craigslist site aggregator"
  s.description = "A Craigslist aggregator interface for extracting data across Craigslist sites."
  s.authors     = ["Jason Buehler"]
  s.email       = 'jason.c.buehler@gmail.com'
  s.files       = ["lib/craiggregator.rb"]
  s.homepage    = 'http://rubygems.org/gems/craiggregator'
  s.license     = 'MIT'

  s.add_development_dependency 'rspec', '~> 3'
  s.add_development_dependency 'nokogiri', '~> 1'
end

