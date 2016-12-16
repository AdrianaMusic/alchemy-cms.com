source 'https://rubygems.org'

gem 'rails', '~> 4.2.7'
gem 'pg', '~> 0.19'
gem 'alchemy_cms',    github: 'AlchemyCMS/alchemy_cms',    branch: '3.2-stable'
gem 'alchemy-devise', github: 'AlchemyCMS/alchemy-devise', branch: '3.2-stable'
gem 'newrelic_rpm'
gem 'kramdown', '~> 1.4.1'
gem 'airbrake', '~> 4.3.4'

# assets
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails', '~> 4.0'
gem 'compass-rails', '~> 2.0'
gem 'zurb-foundation', '~> 4.3.2'
gem 'dotenv-rails', '~> 0.11'

# caching
gem 'rack-cache', require: 'rack/cache'

group :development do
  gem 'pry'
  gem 'capistrano', "~> 2.15"
  gem 'caplock', github: 'Druwerd/caplock', require: false
  gem 'thin'
  gem 'quiet_assets'
  gem 'spring'
  gem 'web-console', '~> 2.0'
end

group :production do
  gem 'mini_racer', '~> 0.1.7'
end
