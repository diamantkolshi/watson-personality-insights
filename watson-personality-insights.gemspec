# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'watson-personality-insights/version'

Gem::Specification.new do |spec|
  spec.name          = "watson-personality-insights"
  spec.version       = PersonalityInsights::VERSION
  spec.authors       = ["Diamant"]
  spec.email         = ["diamantkolshi@gmail.com"]
  spec.summary      = "Watson Personality Insights!"
  spec.description  = "Understand personality characteristics, needs, and values in written text"
  spec.homepage      = "https://github.com/diamantkolshi/watson-personality-insights"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rest-client"
end
