# frozen_string_literal: true

require_relative 'config'
require 'mysql2'
require 'sequel'

class Connections
  MYSQL = Sequel.connect(Config.mysql.url, max_connections: Config.mysql.max_connections).freeze

  private_constant :MYSQL

  class << self
    def mysql
      MYSQL
    end
  end
end
