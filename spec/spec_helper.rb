require 'factory_bot'

RACK_ENV = 'test'.freeze unless defined?(RACK_ENV)
require File.expand_path("#{File.dirname(__FILE__)}/../config/boot")
Dir[File.expand_path("#{File.dirname(__FILE__)}/../app/helpers/**/*.rb")].each do |file|
  require file
end

# https://github.com/DatabaseCleaner/database_cleaner?tab=readme-ov-file#rspec-example
RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.include FactoryBot::Syntax::Methods

  conf.before(:suite) do
    FactoryBot.find_definitions
  end

  conf.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  conf.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
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
