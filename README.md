# OPDS MONSTER

![](http://dl.dropbox.com/u/59591/opds.png)

OPDS Monster is a tool for downloading books from an OPDS feed.  It was started on Halloween night 2011 by [Nick Rowe](http://dcxn.com).  It's a treat, though, don't worry.  I originally wrote this so I could easily download my [Pragmatic Programmer bookshelf](http://pragprog.com).  It might also make an interesting cron job to mirror project gutenberg.


## Usage

1. Install the gem `gem install opds_monster`
2. `monster http://example.com/feed`

This will download all of the books from the example feed to the current working directory.


## Authenticated Feeds

`monster http://pragprog.com/my_bookshelf.opds -u USER -p PASS`

Some feeds, like the Pragmatic Programmer Feed are authenticated using HTTP Basic Authentication.  Adding a user and password should take care of that.

## And the rest

opds monster supports some other options too:


      Usage: monster [options] feed
          -u, --username USER              HTTP basic authentication user name
          -p, --password PASS              HTTP basic authentication password
          -q, --quiet                      Quiet Output
          -h, --help                       Display this screen
          -v, --version                    monster version


## Credits
Photo: [Look I'm a monster...AAAARGH! by JeHu6](http://www.flickr.com/photos/33850040@N02/3736706784/) under CC license.