source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'
gem 'rails', '~> 5.2.1'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'pygments.rb', '~> 0.6.3'
gem 'redcarpet', '~> 3.4'
gem 'friendly_id', '~> 5.1'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'mail_form', '~> 1.5', '>= 1.5.1'
gem 'devise', '~> 4.2'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development do 
    gem 'sqlite3'
end
# group :development do 
#     gem 'sqlite3'
# end

group :production do
    gem 'pg'
    gem 'rails_12factor'
end