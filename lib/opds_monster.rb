require 'rubygems'
require 'atom'
require 'curb'

require 'opds_monster/version'
require 'opds_monster/feed'
require 'opds_monster/feed_item'


# feed = OpdsMonster::Feed.new("http://pragprog.com/my_bookshelf.opds", :username => 'nixterrimus@gmail.com', :password => '6aS^7qVJej')
# puts feed.items.count
# feed.download_all_items
# puts feed.items.count
# puts feed.items.count
# 
# feed = Feed.new("http://bookserver.archive.org/catalog/downloads.xml", :username => '', :password => '')
# puts feed.items.count