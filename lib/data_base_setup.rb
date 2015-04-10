require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require './lib/tag'
require './lib/user'
require './lib/link'

DataMapper.finalize
