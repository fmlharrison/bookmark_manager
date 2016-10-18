require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "postgres://localhost/bookmark_manager")

class Bookmarks
  include DataMapper::Resource

   property :id, Serial
   property :name, String
   property :tag, String
   property :url, String

end

DataMapper.finalize
DataMapper.auto_upgrade!
