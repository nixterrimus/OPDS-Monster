module OpdsMonster
  class FeedItem
    attr_reader :title
    def initialize(atom_entry)
      @title = atom_entry.title
      @links = atom_entry.links
    end
  
    def download(options = {})
      links_to_download.each do |link|
        download_http_file(link, options)
      end
    end
  
    private
  
    def links_to_download
      @links.collect { |l| l.to_s if l.rel =~ /http:\/\/opds-spec.org\/acquisition/ }.compact!
    end
  
    def download_http_file(url, options)
      c = Curl::Easy.new(url)
      c.http_auth_types = :basic
      c.username = options[:username]
      c.password = options[:password]
      c.follow_location = true
      c.max_redirects = 10
      c.perform
      filename = url.split("/").last
      open(filename, "wb") do |file|
          file.write(c.body_str)
      end
    end
  end
end