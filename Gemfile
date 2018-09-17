source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2'
gem 'mysql2'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'hashie'
gem 'bcrypt'
gem 'haml'
gem 'nifty-utils'
gem 'nilify_blanks'
gem 'authie'
gem 'kaminari'
gem 'dynamic_form'
gem 'clockwork'
gem 'changey'
gem 'jobster'

# gem 'florrick'
# gem 'moonrope'
# gem 'myxi'

group :development, :test do
  gem 'annotate'
  gem 'byebug', platform: :mri
end

group :test do
  gem 'rspec', :require => false
  gem 'rspec-rails', :require => false
  gem "factory_girl_rails", "~> 4.0"
  gem "database_cleaner"
end

group :production do
  gem 'sentry-raven'
end
