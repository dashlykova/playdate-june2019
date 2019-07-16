source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'cucumber-rails', require: false
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.8'
  gem 'shoulda-matchers'
  gem 'pry-rails', '~> 0.3.4'
  gem 'database_cleaner', '~> 1.7'
  gem 'webdrivers', '~> 4.0'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.3'
  gem 'coveralls', require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
