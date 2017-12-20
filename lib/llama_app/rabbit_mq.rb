module LlamaApp
  module RabbitMQ

    def self.config
      LlamaApp.config.rabbitmq
    end

    def self.new_bunny
      conn = Bunny.new(:host => config.host, :port => config.port, :username => config.username, :password => config.password, :vhost => config.vhost)
      conn.start
      conn
    end

    def self.create_channel
      conn = new_bunny
      conn.create_channel
    end
  end

  def self.create_rabbitmq_channel
    RabbitMQ.create_channel
  end
end
