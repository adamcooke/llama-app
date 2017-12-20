require 'yaml'
require 'pathname'
require 'cgi'
require 'fileutils'
require_relative 'error'

module LlamaApp

  APP_ROOT = Pathname.new(File.expand_path("../../../", __FILE__))
  DEFAULTS_CONFIG_PATH = APP_ROOT.join('config', 'llama_app', 'defaults.yml')
  LOCAL_CONFIG_PATH = APP_ROOT.join('config', 'llama_app', "local.yml")

  def self.config
    @config ||= begin
      require 'hashie/mash'
      config = Hashie::Mash.new(self.default_config)
      config.deep_merge(self.local_config)
    end
  end

  def self.default_config
    @default_configuration ||= YAML.load_file(DEFAULTS_CONFIG_PATH)
  end

  def self.local_config
    @local_config ||= begin
      config = self.test? ? TEST_CONFIG_PATH : LOCAL_CONFIG_PATH
      if File.exist?(config)
        YAML.load_file(config)
      else
        {}
      end
    end
  end

  def self.development?
    !Rails.env.production?
  end

  def self.production?
    Rails.env.production?
  end

  def self.test?
    ENV['SCODING_ENV'] == 'test'
  end

  def self.database_url
    if config.mysql
      "mysql2://#{CGI.escape(config.mysql.username.to_s)}:#{CGI.escape(config.mysql.password.to_s)}@#{config.mysql.host}:#{config.mysql.port}/#{config.mysql.database}?reconnect=true&encoding=#{config.mysql.encoding}&pool=#{config.mysql.pool_size}"
    else
      "mysql2://root@localhost/llama_app"
    end
  end

  def self.web_host_with_protocol
    "#{config.web.protocol}://#{config.web.host}"
  end

end
