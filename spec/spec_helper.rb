RACK_ENV = 'test'.freeze unless defined?(RACK_ENV)
require File.expand_path("#{File.dirname(__FILE__)}/../config/boot")
Dir[File.expand_path("#{File.dirname(__FILE__)}/../app/helpers/**/*.rb")].each do |file|
  require file
end

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

# You can use this method to custom specify a Rack app
# you want rack-test to invoke:
#
#   app MuselRb::App
#   app MuselRb::App.tap { |a| }
#   app(MuselRb::App) do
#     set :foo, :bar
#   end
#
def app(app = nil, &)
  @app ||= block_given? ? app.instance_eval(&) : app
  @app ||= Padrino.application
end
