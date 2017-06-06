source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.1'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'bcrypt'
gem 'haml', '>= 5.0'
gem 'nifty-utils'
gem 'nilify_blanks'
gem 'authie'
gem 'kaminari'
gem 'dynamic_form'
gem 'clockwork'
gem 'changey'
gem 'jobster'
gem 'figaro'

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
