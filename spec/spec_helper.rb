APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), 'lib/*.rb', '..'))
$: << File.join(APP_ROOT, 'lib/watson-personality-insights')

require "bundler/setup"
require "watson-personality-insights"
require 'fakeweb'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
