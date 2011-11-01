module OpdsMonster
  class Feed
    attr_reader :feed_url
    attr_accessor :feed_items
    attr_accessor :username
    attr_accessor :password
  
    def initialize(feed_url, options = {})
      @feed_url = feed_url
      @feed_items = []
      @username = options[:username]
      self.password = options[:password]
    end
  
    def items
      return self.feed_items unless feed_items.empty?
      feed = Atom::Feed.load_feed(URI.parse(feed_url), :user => username, :pass => password)
      self.feed_items = feed.each_entry.collect { |entry| FeedItem.new(entry) }  
    end
  
    def download_all_items
      items.each do |item|
        item.download(:username => username, :password => password)
        yield item, true
      end
    end
  
    def authentication_required?
      username.nil?
    end
  
  end
end
