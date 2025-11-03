source 'https://rubygems.org'

# Padrino supports Ruby version 2.2.2 and later
# ruby '3.2.8'

# Distribute your app as a gem
# gemspec

# Server requirements
# gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Optional JSON codec (faster performance)
# gem 'oj'

# Project requirements
gem 'rake'

# Component requirements
gem 'activerecord', '~> 7.0.0', require: 'active_record'
gem 'sqlite3', '~> 1.4'

# Test requirements
gem 'rspec', :group => 'test'
gem 'rack-test', :require => 'rack/test', :group => 'test'

# Padrino Stable Gem
gem 'padrino', '0.15.3'

# Or Padrino Edge
# gem 'padrino', :github => 'padrino/padrino-framework'

# Or Individual Gems
# %w(core support gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.15.3'
# end

gem "rack", "< 3"

gem 'puma'

# lint
group :development do
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rake', require: false
end

gem 'ulid'

gem 'grape'
gem 'grape-active_model_serializers'
gem 'padrino-grape', github: 'adamluzsi/padrino-grape'

group :test do
  gem 'database_cleaner-active_record'
  gem 'factory_bot'
  gem 'airborne'
end