ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

require_relative '../lib/llama_app/config'
ENV['RAILS_ENV'] = LlamaApp.config.rails.environment
ENV['DATABASE_URL'] = LlamaApp.database_url
