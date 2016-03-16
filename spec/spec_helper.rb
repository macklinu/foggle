require "simplecov"
SimpleCov.start

if ENV["CI"] == "true"
  require "codecov"
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "foggle"
require "climate_control"

RSpec.configure do |config|
  config.include Foggle::Toggle
end
