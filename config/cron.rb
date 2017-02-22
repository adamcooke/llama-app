require 'clockwork'
require_relative 'environment'

module Clockwork
  configure do |config|
    config[:tz] = 'UTC'
  end

  every 1.day, 'daily', :at => '02:00' do
    require 'authie/session'
    Authie::Session.cleanup
  end
end
